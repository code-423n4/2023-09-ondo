pragma solidity 0.8.16;

import "forge-tests/USDY_BasicDeployment.sol";

contract Test_rUSDY is USDY_BasicDeployment {
  function setUp() public override {
    super.setUp();
    vm.prank(guardian);
    rUSDYToken.setOracle(address(oracleCheckHarnessUSDY));
  }

  /*//////////////////////////////////////////////////////////////
                    Functional Invariant Tests
    //////////////////////////////////////////////////////////////*/

  /**
   * @notice USDY Wrapping Invariants
   *
   * 1) USDY owed from wrapping = (price * USDY_to_mint) / 1e18
   * 2) TS = USDY owed from wrapping
   * 3) USDY remaining post mint = initial USDY bal - USDY to wrap
   * 4) usdy.balanceOf(address(rUSDYToken)) = USDY to wrap
   * - ^ Can be violated by donating to contract.
   */
  function test_fuzz_wrapping_invariant(
    uint64 _initial,
    uint64 _price,
    uint64 _toMint
  ) public {
    vm.assume(_initial > _toMint);
    uint256 initial = uint256(_initial) + 1e18;
    uint256 price = uint256(_price) + 1e18;
    uint256 toMint = uint256(_toMint) + 1e18;

    _mintRWAToUser(alice, initial);

    setPriceUSDY(price);

    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), toMint);
    rUSDYToken.wrap(toMint);

    console.log(rUSDYToken.balanceOf(alice));
    console.log(rUSDYToken.totalSupply());

    uint256 owed = (price * toMint) / 1e18;

    // Assert that the minted amount is correct
    assertAlmostEq(rUSDYToken.balanceOf(alice), owed);
    assertAlmostEq(rUSDYToken.totalSupply(), owed);
    // Assert that the users balance has decreased by `toMint`
    uint256 remainingBal = initial - toMint;
    assertEq(usdy.balanceOf(alice), remainingBal);
    assertEq(usdy.balanceOf(address(rUSDYToken)), toMint);
  }

  /**
   * @notice USDY Transfer Invariants
   *
   * 1) recipients bal = amount sent +/- 1 wei
   * 2) senders remaining balance = remaining shares * price / 1e18
   * 3) total supply is constant
   * 4) senders bal after = senders bal before - amount sent +/- 1 wei
   */
  function test_fuzz_transfer_invariant(
    uint64 _price,
    uint64 _amountToSendNominal,
    uint64 _remainingTokens
  ) public {
    uint256 price = uint256(_price) + 1e18;
    uint256 amountToSend = uint256(_amountToSendNominal) + 1e18;
    uint256 remainingTokens = uint256(_remainingTokens) + 1e18;
    uint256 total = remainingTokens + ((amountToSend * 1e18) / price);

    dealAndWrapAlice(total);

    setPriceUSDY(price);
    uint256 totalSupplyBefore = rUSDYToken.totalSupply();
    uint256 balAliceBefore = rUSDYToken.balanceOf(alice);
    console.log("The starting balance of alice is: ", balAliceBefore);

    vm.prank(alice);
    rUSDYToken.transfer(bob, amountToSend);
    assertAlmostEq(rUSDYToken.balanceOf(bob), amountToSend, 1);
    assertEq(
      rUSDYToken.sharesOf(alice),
      (total * 10_000) - rUSDYToken.getSharesByRUSDY(amountToSend)
    );
    assertEq(rUSDYToken.totalSupply(), totalSupplyBefore);
    assertAlmostEq(
      rUSDYToken.balanceOf(alice),
      balAliceBefore - amountToSend,
      1
    );
  }

  /**
   * @notice Burn invariants
   *
   * 1) Burner's bal post burn = initial - burn amount +/- 0 wei
   * 2) totalSupply post burn = TS before - burn amount +/- 0 wei
   * 3) Balance of alice is the total supply
   * 4) The shares worth of the amount burned = the USDY balance of the burner post burn.
   */
  function test_fuzz_burn_Invariant(uint64 _price, uint64 _toBurn) public {
    uint256 price = uint256(_price) + 1e18;
    uint256 toBurn = uint256(_toBurn) + 50e18;
    dealAndWrapAlice(100e18);

    setPriceUSDY(price);

    uint256 ts_preBurn = rUSDYToken.totalSupply();
    uint256 initial = rUSDYToken.balanceOf(alice);

    console.log("The balance of alice is: ", rUSDYToken.balanceOf(alice));
    console.log("The shares of alice is: ", rUSDYToken.sharesOf(alice));

    vm.prank(alice);
    rUSDYToken.unwrap(toBurn);

    assertAlmostEq(rUSDYToken.balanceOf(alice), initial - toBurn, 0);
    assertAlmostEq(rUSDYToken.totalSupply(), ts_preBurn - toBurn, 0);
    assertEq(rUSDYToken.balanceOf(alice), rUSDYToken.totalSupply());
    assertEq(
      rUSDYToken.getSharesByRUSDY(toBurn) / 10_000,
      usdy.balanceOf(alice)
    );
  }

  /**
   * @notice Self-explanatory
   */
  function test_allowance_should_be_const_thru_rebase(uint64 _price) public {
    uint256 price = uint256(_price) + 1e18;
    dealAndWrapAlice(100e18);

    vm.prank(alice);
    rUSDYToken.approve(bob, 50e18);
    uint256 allowanceBefore = rUSDYToken.allowance(alice, bob);

    setPriceUSDY(price);

    uint256 allowanceAfter = rUSDYToken.allowance(alice, bob);
    assertEq(allowanceBefore, allowanceAfter);
  }

  /*//////////////////////////////////////////////////////////////
                        Proxy Setup Tests
    //////////////////////////////////////////////////////////////*/

  /**
   * @notice Check that the PROXY and implementation are those deployed by the factory
   */
  function test_implementation_address() public {
    bytes32 impl = vm.load(address(rUSDYToken), impl_slot);
    bytes32 admin = vm.load(address(rUSDYToken), admin_slot);
    address proxyAdmin_rUSDY = address(rUSDYFactoryContract.rUSDYProxyAdmin());
    address impl_rUSDY = address(rUSDYFactoryContract.rUSDYImplementation());
    assertEq(impl, bytes32(uint256(uint160(impl_rUSDY))));
    assertEq(admin, bytes32(uint256(uint160(proxyAdmin_rUSDY))));
  }

  /**
   * @notice Check that calls to upgrade on the proxy revert
   */
  function test_cannot_call_upgrade() public {
    vm.expectRevert();
    TokenProxy(payable(address(rUSDYToken))).upgradeTo(address(55));
  }

  /**
   * @notice Check that you are not able to call and initialize the proxy
   */
  function test_cannot_initialize_impl() public {
    address impl_rUSDY = address(rUSDYFactoryContract.rUSDYImplementation());
    vm.expectRevert(bytes("Initializable: contract is already initialized"));
    rUSDY(impl_rUSDY).initialize(
      address(2),
      address(3),
      address(4),
      address(5),
      address(6),
      address(7)
    );
  }

  /*//////////////////////////////////////////////////////////////
                        Initialization Tests 
    //////////////////////////////////////////////////////////////*/

  /**
   * @notice sanity check the rUSDYToken deployment
   */
  function test_init_ts() public {
    uint256 res = rUSDYToken.totalSupply();
    assertEq(res, 0);
  }

  /*//////////////////////////////////////////////////////////////
                        Helper Function 
    //////////////////////////////////////////////////////////////*/

  function setPriceUSDY(uint256 price) public {
    oracleCheckHarnessUSDY.setPrice(int256(price));
    // rUSDYToken.handleOracleReport();
  }

  function dealAndWrapAlice(uint256 usdyAmount) public {
    _mintRWAToUser(alice, usdyAmount);
    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), usdyAmount);
    rUSDYToken.wrap(usdyAmount);
    vm.stopPrank();
  }

  bytes32 impl_slot =
    bytes32(uint256(keccak256("eip1967.proxy.implementation")) - 1);
  bytes32 admin_slot = bytes32(uint256(keccak256("eip1967.proxy.admin")) - 1);
}
