pragma solidity 0.8.16;

import "forge-tests/BaseTestRunner.sol";
import "contracts/usdy/allowlist/AllowlistFactory.sol";
import "forge-tests/helpers/events/USDYManagerEvents.sol";
import "contracts/external/openzeppelin/contracts/proxy/ProxyAdmin.sol";
import "contracts/usdy/USDYManager.sol";
import "contracts/usdy/USDY.sol";
import "contracts/usdy/USDYFactory.sol";
import "contracts/Pricer.sol";
import "contracts/usdy/allowlist/AllowlistUpgradeable.sol";
import "contracts/usdy/blocklist/Blocklist.sol";
import "contracts/Proxy.sol";
import "forge-tests/usdy/allowlist/AllowlistUpgradeable_BasicDeployment.sol";
import "contracts/external/chainalysis/ISanctionsList.sol";
import "forge-tests/helpers/MockSanctionsOracle.sol";
import "contracts/usdy/rUSDY.sol";
import "contracts/usdy/rUSDYFactory.sol";
import "contracts/rwaOracles/RWADynamicOracle.sol";

abstract contract USDY_BasicDeployment is
  BaseTestRunner,
  AllowlistUpgradeable_BasicDeployment,
  USDYManagerEvents
{
  Blocklist blocklist;
  ISanctionsList sanctionsList;

  // USDY Contract Array
  USDY usdy; // Proxy with abi of implementation
  TokenProxy usdyProxy;
  ProxyAdmin usdyProxyAdmin;
  USDY usdyImplementation;
  USDYFactory usdyFactory;

  // RUSDY Contract Array
  rUSDY rUSDYToken; // Proxy with abi of implementation
  TokenProxy rUSDYProxy;
  ProxyAdmin rUSDYProxyAdmin;
  rUSDY rUSDYImplementation;
  rUSDYFactory rUSDYFactoryContract;

  // USDY Manager Contracts
  USDYManager usdyManager;
  Pricer pricerUSDY;
  DeltaCheckHarness oracleCheckHarnessUSDY;
  RWADynamicOracle oracleUSDY;

  address[] public accountsTmp;

  function setUp() public virtual override {
    // Heavily order dependent call flow
    _deployAllowlist();
    _deployBlocklist();
    _deploySanctionsList();
    _deployUSDY();
    _deployUSDYPricer();
    _deployUSDYManager();
    _deployRUSDY();
    _postDeployActions();
  }

  function _deployBlocklist() internal {
    blocklist = new Blocklist();
  }

  function _deploySanctionsList() internal {
    sanctionsList = new MockSanctionsOracle();
  }

  function _deployUSDY() internal {
    usdyFactory = new USDYFactory(guardian);
    USDYFactory.USDYListData memory usdyListData;
    usdyListData.allowlist = address(allowlist);
    usdyListData.blocklist = address(blocklist);
    usdyListData.sanctionsList = address(sanctionsList);

    vm.prank(guardian);
    (address proxy, address proxyAdmin, address implementation) = usdyFactory
      .deployUSDY("USDY", "USDY", usdyListData);

    usdy = USDY(proxy);
    usdyProxy = TokenProxy(payable(proxy));
    usdyProxyAdmin = ProxyAdmin(proxyAdmin);
    usdyImplementation = USDY(implementation);
    vm.prank(guardian);
    usdy.grantRole(keccak256("MINTER_ROLE"), guardian);
  }

  function _deployRUSDY() internal {
    uint256 periodStart = 1690833600; // JUL 31 8pm UTC
    uint256 periodEnd = 1693512000; // AUG 31 8pm UTC
    uint256 dailyIR = 1.00013368 * 1e27; // (1 + Daily IR, scaled to 1e27),
    uint256 rangeStartPrice = 1e18; // Initial price

    rUSDYFactoryContract = new rUSDYFactory(guardian);
    oracleUSDY = new RWADynamicOracle(
      address(this),
      address(this),
      address(this),
      periodStart,
      periodEnd,
      dailyIR,
      rangeStartPrice
    );
    vm.prank(guardian);
    (
      address proxy,
      address proxyAdmin,
      address implementation
    ) = rUSDYFactoryContract.deployrUSDY(
        address(blocklist),
        address(allowlist),
        address(sanctionsList),
        address(usdy),
        address(oracleUSDY)
      );

    rUSDYToken = rUSDY(proxy);
    rUSDYProxy = TokenProxy(payable(proxy));
    rUSDYProxyAdmin = ProxyAdmin(proxyAdmin);
    rUSDYImplementation = rUSDY(implementation);
  }

  function _deployUSDYPricer() internal {
    oracleCheckHarnessUSDY = new DeltaCheckHarness();
    oracleCheckHarnessUSDY.setPrice(1e18);
    pricerUSDY = new Pricer(
      guardian, // Admin
      address(this) // Price Update operator
    );
    // Add a price
    pricerUSDY.addPrice(1e18, block.timestamp);
  }

  function _deployUSDYManager() internal virtual {
    usdyManager = new USDYManager(
      address(USDC),
      address(usdy),
      managerAdmin,
      pauser,
      assetSender,
      feeRecipient,
      100e6, // minimum deposit amount
      100e18, // minimum redemption amount
      address(blocklist),
      address(sanctionsList)
    );
    vm.startPrank(guardian);
    usdy.grantRole(usdy.MINTER_ROLE(), address(usdyManager));
    vm.stopPrank();

    vm.startPrank(managerAdmin);
    usdyManager.grantRole(usdyManager.PRICE_ID_SETTER_ROLE(), managerAdmin);
    usdyManager.grantRole(usdyManager.TIMESTAMP_SETTER_ROLE(), managerAdmin);
    usdyManager.grantRole(usdyManager.PAUSER_ADMIN(), managerAdmin);

    usdyManager.setPricer(address(pricerUSDY));
    usdyManager.grantRole(usdyManager.RELAYER_ROLE(), relayer);
    vm.stopPrank();
  }

  function _setOracle(address _oracle) internal {
    vm.startPrank(guardian);
    rUSDYToken.setOracle(_oracle);
    // Set price
    // rUSDYToken.handleOracleReport();
    vm.stopPrank();
  }

  function _postDeployActions() internal {
    // Set general variables for rwa tests
    _setRwaHub(address(usdyManager));
    _setRwa(address(usdy));
    _setPricer(address(pricerUSDY));
    _setOracleCheckHarness(address(oracleCheckHarnessUSDY));

    // Allowlist
    _addAccountToAllowlistCurrentTerm(guardian);
    _addAccountToAllowlistCurrentTerm(alice);
    _addAccountToAllowlistCurrentTerm(bob);
    _addAccountToAllowlistCurrentTerm(address(rwaHub));

    // Labels
    vm.label(guardian, "guardian");
    vm.label(address(USDC), "USDC");
  }

  /*//////////////////////////////////////////////////////////////
                             Utils
  //////////////////////////////////////////////////////////////*/

  function _addToBlocklist(address user) internal {
    accountsTmp.push(user);
    blocklist.addToBlocklist(accountsTmp);
  }

  function _addToSanctionsList(address user) internal {
    MockSanctionsOracle(address(sanctionsList)).addAddress(user);
  }

  function _initializeUSDYUsersArray() internal {
    for (uint256 i = 0; i < 300; i++) {
      address user = address(new User());
      users.push(user);
      _addAccountToAllowlistCurrentTerm(user);
    }
  }
}
