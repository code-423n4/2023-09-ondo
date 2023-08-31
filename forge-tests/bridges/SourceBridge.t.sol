pragma solidity 0.8.16;

import "forge-tests/USDY_BasicDeployment.sol";
import "forge-tests/helpers/events/SourceBridgeEvents.sol";
import "contracts/bridge/SourceBridge.sol";
import "contracts/interfaces/IMulticall.sol";
import "contracts/external/axelar/StringAddressUtils.sol";

contract Test_SourceBridge is USDY_BasicDeployment, SourceBridgeEvents {
  // Bridge Contracts
  address internal constant AXELAR_GATEWAY =
    0x4F4495243837681061C4743b74B3eEdf548D56A5;
  address internal constant AXELAR_GAS_SERVICE =
    0x2d5d7d31F671F86C782533cc367F14109a082712;
  address internal constant mockReceiver = address(1);
  SourceBridge usdyBridge;

  function setUp() public override {
    super.setUp();
    usdyBridge = new SourceBridge(
      address(usdy),
      AXELAR_GATEWAY,
      AXELAR_GAS_SERVICE,
      address(this)
    );
    _addAccountToAllowlistCurrentTerm(address(usdyBridge));

    // Set bridge recipient
    usdyBridge.setDestinationChainContractAddress("optimism", mockReceiver);
  }

  /*//////////////////////////////////////////////////////////////
                      Setters & Initializers
  //////////////////////////////////////////////////////////////*/

  function test_constructor_initialization() public {
    assertEq(address(usdyBridge.TOKEN()), address(usdy));
    assertEq(address(usdyBridge.AXELAR_GATEWAY()), AXELAR_GATEWAY);
    assertEq(address(usdyBridge.GAS_RECEIVER()), AXELAR_GAS_SERVICE);
    assertEq(usdyBridge.VERSION(), bytes32("1.0"));
    assertEq(usdyBridge.nonce(), 0);
  }

  function test_setDestinationChainAddress_fail_notOwner() public {
    vm.prank(alice);
    vm.expectRevert("Ownable: caller is not the owner");
    usdyBridge.setDestinationChainContractAddress("test", alice);
  }

  function test_setDestinationChainAddress() public {
    vm.expectEmit(true, true, true, true);
    address testReceiver = address(2);
    emit DestinationChainContractAddressSet("test", testReceiver);
    usdyBridge.setDestinationChainContractAddress("test", testReceiver);
    assertEq(
      usdyBridge.destChainToContractAddr("test"),
      AddressToString.toString(testReceiver)
    );
  }

  function test_multicall_fail_notOwner() public {
    vm.prank(alice);
    vm.expectRevert("Ownable: caller is not the owner");
    usdyBridge.multiexcall(new IMulticall.ExCallData[](0));
  }

  function test_multicall_recoverERC20() public {
    // Alice sends 100 USDY to usdyBridge
    _mintRWAToUser(alice, 100e18);
    vm.prank(alice);
    usdy.transfer(address(usdyBridge), 100e18);
    assertEq(usdy.balanceOf(address(usdyBridge)), 100e18);
    assertEq(usdy.balanceOf(alice), 0);

    // Send USDY back to Alice
    IMulticall.ExCallData[] memory calls = new IMulticall.ExCallData[](1);
    calls[0] = IMulticall.ExCallData(
      address(usdy),
      abi.encodeWithSelector(usdy.transfer.selector, alice, 100e18),
      0
    );
    usdyBridge.multiexcall(calls);
    assertEq(usdy.balanceOf(address(usdyBridge)), 0);
    assertEq(usdy.balanceOf(alice), 100e18);
  }

  function test_pause_fail_notOwner() public {
    vm.prank(alice);
    vm.expectRevert("Ownable: caller is not the owner");
    usdyBridge.pause();
  }

  function test_pause() public {
    vm.expectEmit(true, true, true, true);
    emit Paused(address(this));
    usdyBridge.pause();
    assertTrue(usdyBridge.paused());
  }

  function test_unpause_fail_notOwner() public {
    usdyBridge.pause();
    vm.prank(alice);
    vm.expectRevert("Ownable: caller is not the owner");
    usdyBridge.unpause();
  }

  function test_unpause() public {
    usdyBridge.pause();
    vm.expectEmit(true, true, true, true);
    emit Unpaused(address(this));
    usdyBridge.unpause();
    assertFalse(usdyBridge.paused());
  }

  /*//////////////////////////////////////////////////////////////
                           Bridge Tests
  //////////////////////////////////////////////////////////////*/

  function test_bridge_fail_destChainNotSupported() public initializeAlice {
    vm.expectRevert(SourceBridge.DestinationNotSupported.selector);
    vm.prank(alice);
    usdyBridge.burnAndCallAxelar{value: 0.1 ether}(100e18, "arbitrum");
  }

  function test_bridge_fail_gasTooLow() public initializeAlice {
    vm.expectRevert(SourceBridge.GasFeeTooLow.selector);
    vm.prank(alice);
    usdyBridge.burnAndCallAxelar{value: 0 ether}(100e18, "optimism");
  }

  function test_bridge_fail_noApprove() public {
    _mintRWAToUser(alice, 100e18);
    vm.deal(alice, 1 ether);
    vm.expectRevert("ERC20: insufficient allowance");
    vm.prank(alice);
    usdyBridge.burnAndCallAxelar{value: 0.01 ether}(100e18, "optimism");
  }

  function test_bridge_fail_paused() public initializeAlice {
    usdyBridge.pause();
    vm.expectRevert("Pausable: paused");
    vm.prank(alice);
    usdyBridge.burnAndCallAxelar{value: 0.01 ether}(100e18, "optimism");
  }

  function test_bridge() public initializeAlice {
    uint256 gasReceiverBalanceBefore = AXELAR_GAS_SERVICE.balance;

    // Expect event emit from gas receiver
    bytes memory payload = abi.encode(bytes32("1.0"), alice, 100e18, 0);
    bytes32 payloadHash = keccak256(payload);
    vm.expectEmit(true, true, true, true);
    emit NativeGasPaidForContractCall(
      address(usdyBridge),
      "optimism",
      AddressToString.toString(mockReceiver),
      payloadHash,
      0.01 ether,
      alice
    );

    // Expect event emit from gateway
    vm.expectEmit(true, true, true, true);
    emit ContractCall(
      address(usdyBridge),
      "optimism",
      AddressToString.toString(mockReceiver),
      payloadHash,
      payload
    );

    // Bridge Tokens
    vm.prank(alice);
    usdyBridge.burnAndCallAxelar{value: 0.01 ether}(100e18, "optimism");

    assertEq(usdy.balanceOf(address(usdyBridge)), 0);
    assertEq(usdy.balanceOf(alice), 0);
    assertEq(alice.balance, 0.99 ether);
    assertEq(AXELAR_GAS_SERVICE.balance, gasReceiverBalanceBefore + 0.01 ether);
  }

  modifier initializeAlice() {
    vm.deal(alice, 1 ether);
    _mintRWAToUser(alice, 100e18);
    vm.prank(alice);
    usdy.approve(address(usdyBridge), 100e18);
    _;
  }
}
