pragma solidity 0.8.16;

import "forge-tests/USDY_BasicDeployment.sol";
import "forge-tests/helpers/events/DestinationBridgeEvents.sol";
import "contracts/bridge/DestinationBridge.sol";

contract Test_DestinationBridge is
  DestinationBridgeEvents,
  USDY_BasicDeployment
{
  DestinationBridge destinationBridge;
  IAxelarGateway gateway =
    IAxelarGateway(0x4F4495243837681061C4743b74B3eEdf548D56A5);
  address gateway_eth = 0x4F4495243837681061C4743b74B3eEdf548D56A5;
  address gas_service_eth = 0x2d5d7d31F671F86C782533cc367F14109a082712;
  bytes32 internal constant PREFIX_CONTRACT_CALL_APPROVED =
    keccak256("contract-call-approved");
  bytes32 internal constant PREFIX_TOKEN_ADDRESS = keccak256("token-address");
  bytes32 internal constant VERSION = "1.0";

  address ondoSigner0 = address(0x111);
  address ondoSigner1 = address(0x222);

  string arb = "arbitrum";
  uint256[] amounts;
  uint256[] numOfApprovers;

  function setUp() public override {
    // Deploy the Receiver contract
    super.setUp();
    destinationBridge = new DestinationBridge(
      address(usdy),
      gateway_eth,
      address(allowlist),
      guardian,
      guardian,
      1_000e18, // MAX MINT LIMIT
      1 days // WINDOW FOR DURATION
    );

    // Execute tokens will prompt gateway to transfer tokens
    vm.startPrank(guardian);
    usdy.grantRole(usdy.MINTER_ROLE(), address(destinationBridge));
    vm.stopPrank();
    vm.startPrank(allowlistAdmin);
    allowlist.grantRole(
      allowlist.ALLOWLIST_SETTER(),
      address(destinationBridge)
    );
    vm.stopPrank();

    // Initialize source
    vm.startPrank(guardian);
    destinationBridge.addChainSupport(
      "arbitrum",
      "0xce16F69375520ab01377ce7B88f5BA8C48F8D666"
    );
    destinationBridge.addApprover(ondoSigner0);
    destinationBridge.addApprover(ondoSigner1);
    vm.stopPrank();

    // Set the thresholds per chain
    test_set_threshold_arbitrum();
  }

  function test_Receiver_constructor_initialization() public {
    assertEq(address(destinationBridge.TOKEN()), address(usdy));
    assertEq(address(destinationBridge.AXELAR_GATEWAY()), address(gateway));
    assertEq(address(destinationBridge.ALLOWLIST()), address(allowlist));
    // assertEq(uint256(destinationBridge.approvers(address(gateway))), 1);
    assertEq(destinationBridge.approvers(address(guardian)), true);
    assertEq(destinationBridge.mintLimit(), 1_000e18);
    assertEq(destinationBridge.resetMintDuration(), 1 days);
  }

  function test_Receiver_basic_msg_passing() public {
    bytes32 cmdId = bytes32(
      0x9991faa1f435675159ffae64b66d7ecfdb55c29755869a18db8497b4392347e0
    );
    string memory srcChain = "arbitrum";
    string memory srcAddress = "0xce16F69375520ab01377ce7B88f5BA8C48F8D666";
    address srcSender = alice;
    uint256 amt = 100e18;
    uint256 nonce = 1;
    bytes memory payload = abi.encode(VERSION, srcSender, amt, nonce);

    approve_message(
      cmdId,
      srcChain,
      srcAddress,
      address(destinationBridge),
      keccak256(payload)
    );
    destinationBridge.execute(cmdId, srcChain, srcAddress, payload);
  }

  /*//////////////////////////////////////////////////////////////
                      Functionality Tests
  //////////////////////////////////////////////////////////////*/

  function test_Receiver_emits_event_onMint() public {
    bytes memory payload = abi.encode(VERSION, alice, 100e18, 1);
    sendMessage(payload);

    vm.expectEmit(true, true, true, true);
    emit BridgeCompleted(alice, 100e18);
    vm.prank(ondoSigner0);
    destinationBridge.approve(keccak256(payload));
  }

  function test_Receiver_handles_allowlist_inclusion() public {
    bytes memory payload = abi.encode(VERSION, charlie, 100e18, 1);
    sendMessage(payload);

    vm.prank(ondoSigner0);
    destinationBridge.approve(keccak256(payload));
    assertTrue(allowlist.isAllowed(charlie));
    assertEq(usdy.balanceOf(charlie), 100e18);
  }

  function test_Receiver_cannot_bridge_to_sanctioned() public {
    _addToSanctionsList(charlie);
    bytes memory payload = abi.encode(VERSION, charlie, 100e18, 1);
    sendMessage(payload);

    vm.expectRevert(bytes("USDY: 'to' address sanctioned"));
    vm.prank(ondoSigner0);
    destinationBridge.approve(keccak256(payload));
  }

  function test_Receiver_srcContract_cannot_reuse_nonce() public {
    bytes memory payload = abi.encode(VERSION, alice, 100e18, 1);
    sendMessage(payload);

    vm.expectRevert(DestinationBridge.NonceSpent.selector);
    sendMessage(payload);
  }

  function test_Receiver_invalidVersion() public {
    // Use new version
    bytes memory payload = abi.encode(bytes32("2.0"), alice, 100e18, 1);
    bytes32 cmdId = bytes32(
      0x9991faa1f435675159ffae64b66d7ecfdb55c29755869a18db8497b4392347e0
    );
    string memory srcChain = "arbitrum";
    string memory srcAddress = "0xce16F69375520ab01377ce7B88f5BA8C48F8D666";

    approve_message(
      cmdId,
      srcChain,
      srcAddress,
      address(destinationBridge),
      keccak256(payload)
    );

    vm.expectRevert(DestinationBridge.InvalidVersion.selector);
    vm.prank(address(gateway_eth));
    destinationBridge.execute(cmdId, srcChain, srcAddress, payload);
  }

  function test_Receiver_chainNotSupported() public {
    // Use unsupported source chain
    bytes memory payload = abi.encode(VERSION, alice, 100e18, 1);
    bytes32 cmdId = bytes32(
      0x9991faa1f435675159ffae64b66d7ecfdb55c29755869a18db8497b4392347e0
    );
    string memory srcChain = "optimism";
    string memory srcAddress = "0xce16F69375520ab01377ce7B88f5BA8C48F8D612";

    approve_message(
      cmdId,
      srcChain,
      srcAddress,
      address(destinationBridge),
      keccak256(payload)
    );

    vm.expectRevert(DestinationBridge.ChainNotSupported.selector);

    destinationBridge.execute(cmdId, srcChain, srcAddress, payload);
  }

  function test_Receiver_sourceNotSupported() public {
    bytes memory payload = abi.encode(VERSION, alice, 100e18, 1);
    bytes32 cmdId = bytes32(
      0x9991faa1f435675159ffae64b66d7ecfdb55c29755869a18db8497b4392347e0
    );
    string memory srcChain = "arbitrum";
    // Use unsupported source address
    string memory srcAddress = "0xce16F69375520ab01377ce7B88f5BA8C48F8D612";

    approve_message(
      cmdId,
      srcChain,
      srcAddress,
      address(destinationBridge),
      keccak256(payload)
    );
    vm.expectRevert(DestinationBridge.SourceNotSupported.selector);

    destinationBridge.execute(cmdId, srcChain, srcAddress, payload);
  }

  function test_Receiver_fail_paused() public {
    vm.prank(guardian);
    destinationBridge.pause();
    bytes memory payload = abi.encode(VERSION, alice, 100e18, 1);
    vm.expectRevert("Pausable: paused");
    sendMessage(payload);
  }

  function test_Receiver_Owner_can_rescue_tokens() public {
    _seedWithCollateral(address(destinationBridge), 10_000e6);
    assertEq(USDC.balanceOf(address(destinationBridge)), 10_000e6);
    vm.prank(guardian);
    destinationBridge.rescueTokens(address(USDC));
    assertEq(USDC.balanceOf(guardian), 10_000e6);
  }

  function test_Receiver_nonOwner_cannot_rescue_tokens() public {
    _seedWithCollateral(address(destinationBridge), 10_000e6);
    assertEq(USDC.balanceOf(address(destinationBridge)), 10_000e6);
    vm.expectRevert(bytes("Ownable: caller is not the owner"));
    vm.prank(alice);
    destinationBridge.rescueTokens(address(USDC));
  }

  /*//////////////////////////////////////////////////////////////
                         Threshold Tests
  //////////////////////////////////////////////////////////////*/

  function test_Receiver_revert_if_no_threshold_set() public {
    remove_threshold_arbitrum();

    bytes32 cmdId = bytes32(
      0x9991faa1f435675159ffae64b66d7ecfdb55c29755869a18db8497b4392347e0
    );
    string memory srcChain = "arbitrum";
    string memory srcAddress = "0xce16F69375520ab01377ce7B88f5BA8C48F8D666";
    address srcSender = alice;
    uint256 amt = 100e18;
    uint256 nonce = 1;
    bytes memory payload = abi.encode(VERSION, srcSender, amt, nonce);

    approve_message(
      cmdId,
      srcChain,
      srcAddress,
      address(destinationBridge),
      keccak256(payload)
    );

    vm.expectRevert(DestinationBridge.NoThresholdMatch.selector);
    destinationBridge.execute(cmdId, srcChain, srcAddress, payload);
  }

  function test_Receiver_proposer_cannot_approve() public {
    bytes memory payload = abi.encode(VERSION, alice, 100e18, 1);
    sendMessage(payload);

    vm.expectRevert(DestinationBridge.NotApprover.selector);
    destinationBridge.approve(keccak256(payload));
  }

  function test_Receiver_signer_cannot_sign_twice() public {
    bytes memory payload = abi.encode(VERSION, alice, 1000e18, 1);
    sendMessage(payload);

    vm.prank(ondoSigner0);
    destinationBridge.approve(keccak256(payload));
    assertEq(destinationBridge.getNumApproved(keccak256(payload)), 2);

    vm.expectRevert(DestinationBridge.AlreadyApproved.selector);
    vm.prank(ondoSigner0);
    destinationBridge.approve(keccak256(payload));
    assertEq(destinationBridge.getNumApproved(keccak256(payload)), 2);

    vm.prank(ondoSigner1);
    destinationBridge.approve(keccak256(payload));
  }

  /*//////////////////////////////////////////////////////////////
                       Mint Limit Tests
  //////////////////////////////////////////////////////////////*/

  function test_Receiver_user_cannot_claim_when_rateLimitMet() public {
    bytes memory payload = abi.encode(VERSION, alice, 1000e18, 1);
    sendMessage(payload);
    vm.prank(ondoSigner0);
    destinationBridge.approve(keccak256(payload));
    vm.prank(ondoSigner1);
    destinationBridge.approve(keccak256(payload));
    assertEq(usdy.balanceOf(alice), 1000e18);

    payload = abi.encode(VERSION, bob, 100e18, 2);
    sendMessage(payload);

    vm.expectRevert(bytes("RateLimit: Mint exceeds rate limit"));
    vm.prank(ondoSigner0);
    destinationBridge.approve(keccak256(payload));
    assertEq(usdy.balanceOf(bob), 0);
  }

  function test_Receiver_user_can_claim_when_limit_reset() public {
    test_Receiver_user_cannot_claim_when_rateLimitMet();
    bytes memory payload = abi.encode(VERSION, bob, 100e18, 2);
    vm.warp(block.timestamp + 1 days);
    vm.prank(ondoSigner0);
    destinationBridge.approve(keccak256(payload));
    assertEq(usdy.balanceOf(bob), 100e18);
  }

  function test_Receiver_Owner_can_update_mintLimit() public {
    vm.expectEmit(true, true, true, true);
    emit MintLimitSet(5_000e18);
    vm.prank(guardian);
    destinationBridge.setMintLimit(5_000e18);
    assertEq(destinationBridge.mintLimit(), 5_000e18);
  }

  function test_Receiver_nonOwner_cannnot_update_mintLimit() public {
    vm.expectRevert(bytes("Ownable: caller is not the owner"));
    vm.prank(alice);
    destinationBridge.setMintLimit(5_000e18);
    assertEq(destinationBridge.mintLimit(), 1_000e18);
  }

  function test_Receiver_Owner_can_update_mintDuration() public {
    vm.expectEmit(true, true, true, true);
    emit MintLimitDurationSet(2 days);
    vm.prank(guardian);
    destinationBridge.setMintLimitDuration(2 days);
    assertEq(destinationBridge.resetMintDuration(), 2 days);
  }

  function test_Receiver_nonOwner_cannot_update_mintDuration() public {
    vm.expectRevert(bytes("Ownable: caller is not the owner"));
    vm.prank(alice);
    destinationBridge.setMintLimitDuration(2 days);
    assertEq(destinationBridge.resetMintDuration(), 1 days);
  }

  /*//////////////////////////////////////////////////////////////
                      Admin Function tests
  //////////////////////////////////////////////////////////////*/

  function test_Receiver_nonOwner_cannot_approve() public {
    bytes memory payload = abi.encode(VERSION, alice, 100e18, 1);
    sendMessage(payload);

    vm.expectRevert(DestinationBridge.NotApprover.selector);
    vm.prank(alice);
    destinationBridge.approve(keccak256(payload));
  }

  function test_Receiver_Owner_can_add_signer() public {
    vm.expectEmit(true, true, true, true);
    emit ApproverAdded(charlie);
    vm.prank(guardian);
    destinationBridge.addApprover(charlie);
    assertEq(destinationBridge.approvers(charlie), true);
  }

  function test_Receiver_Owner_can_add_chain_support() public {
    string memory srcAddress = "0x9019295cA2dCdC4BCFf323b562e87FC922e34C32";
    string memory srcChain = "optimism";
    vm.expectEmit(true, true, true, true);
    emit ChainIdSupported(
      "optimism",
      "0x9019295cA2dCdC4BCFf323b562e87FC922e34C32"
    );
    vm.prank(guardian);
    destinationBridge.addChainSupport(srcChain, srcAddress);
    assertEq(
      destinationBridge.chainToApprovedSender("optimism"),
      keccak256(abi.encode(srcAddress))
    );
  }

  function test_Receiver_nonOwner_cannot_add_chain_support() public {
    string memory srcAddress = "0x9019295cA2dCdC4BCFf323b562e87FC922e34C32";
    string memory srcChain = "optimism";
    vm.expectRevert(bytes("Ownable: caller is not the owner"));
    vm.prank(alice);
    destinationBridge.addChainSupport(srcChain, srcAddress);
    assertEq(destinationBridge.chainToApprovedSender("optimism"), bytes32(0));
  }

  function test_Receiver_Owner_can_add_nonOndo_signer() public {
    vm.expectEmit(true, true, true, true);
    emit ApproverAdded(bob);
    vm.prank(guardian);
    destinationBridge.addApprover(bob);
    assertEq(destinationBridge.approvers(bob), true);
  }

  function test_Receiver_nonOwner_cannot_add_signer() public {
    vm.expectRevert(bytes("Ownable: caller is not the owner"));
    vm.prank(alice);
    destinationBridge.addApprover(charlie);
  }

  function test_Receiver_Owner_can_remove_signer() public {
    vm.expectEmit(true, true, true, true);
    emit ApproverRemoved(guardian);
    vm.prank(guardian);
    destinationBridge.removeApprover(guardian);
    assertEq(destinationBridge.approvers(guardian), false);
  }

  function test_Receiver_nonOwner_cannot_remove_signer() public {
    vm.expectRevert(bytes("Ownable: caller is not the owner"));
    vm.prank(alice);
    destinationBridge.removeApprover(address(gateway));
  }

  function test_Receiver_Owner_can_set_threshold() public {
    // Set threshold amounts
    amounts.push(500e18);
    numOfApprovers.push(2);
    amounts.push(1_000e18);
    numOfApprovers.push(5);

    vm.expectEmit(true, true, true, true);
    emit ThresholdSet(arb, amounts, numOfApprovers);
    vm.prank(guardian);
    destinationBridge.setThresholds(arb, amounts, numOfApprovers);
    (uint256 amount, uint256 threshold) = destinationBridge.chainToThresholds(
      arb,
      1
    );
    assertEq(amount, 1_000e18);
    assertEq(threshold, 5);
  }

  function test_Receiver_Owner_cannot_mismatch_threshold_lengths() public {
    amounts.push(500e18);
    numOfApprovers.push(2);
    numOfApprovers.push(3);

    vm.expectRevert(DestinationBridge.ArrayLengthMismatch.selector);
    vm.prank(guardian);
    destinationBridge.setThresholds(arb, amounts, numOfApprovers);
  }

  function test_Receiver_Owner_cannot_misorder_thresholds() public {
    amounts.push(100e18);
    amounts.push(50e18);
    numOfApprovers.push(2);
    numOfApprovers.push(3);

    vm.expectRevert(DestinationBridge.ThresholdsNotInAscendingOrder.selector);
    vm.prank(guardian);
    destinationBridge.setThresholds(arb, amounts, numOfApprovers);
  }

  function test_Receiver_nonOwner_cannot_add_threshold() public {
    vm.expectRevert(bytes("Ownable: caller is not the owner"));
    vm.prank(alice);
    destinationBridge.setThresholds(arb, amounts, numOfApprovers);
  }

  function test_pause_fail_notOwner() public {
    vm.prank(alice);
    vm.expectRevert("Ownable: caller is not the owner");
    destinationBridge.pause();
  }

  function test_pause() public {
    vm.expectEmit(true, true, true, true);
    emit Paused(guardian);
    vm.prank(guardian);
    destinationBridge.pause();
    assertTrue(destinationBridge.paused());
  }

  function test_unpause_fail_notOwner() public {
    vm.prank(guardian);
    destinationBridge.pause();
    vm.prank(alice);
    vm.expectRevert("Ownable: caller is not the owner");
    destinationBridge.unpause();
  }

  function test_unpause() public {
    vm.startPrank(guardian);
    destinationBridge.pause();
    vm.expectEmit(true, true, true, true);
    emit Unpaused(guardian);
    destinationBridge.unpause();
    assertFalse(destinationBridge.paused());
    vm.stopPrank();
  }

  /*//////////////////////////////////////////////////////////////
                     3rd Party Defect Tests
  //////////////////////////////////////////////////////////////*/

  function test_receiver_axelar_cannot_call_twice() public {
    bytes memory payload = abi.encode(VERSION, alice, 100e18, 1);
    sendMessage(payload);

    vm.expectRevert(DestinationBridge.NotApprover.selector);
    vm.prank(gateway_eth);
    destinationBridge.approve(keccak256(payload));
  }

  function test_Receiver_nonAxelar_cannot_propose() public {
    bytes memory payload = abi.encode(VERSION, alice, 100e18, 1);
    sendMessage(payload);

    vm.expectRevert(DestinationBridge.NotApprover.selector);
    vm.prank(alice);
    destinationBridge.approve(keccak256(payload));
  }

  /*//////////////////////////////////////////////////////////////
                        Bridge Utilities
  //////////////////////////////////////////////////////////////*/
  function initializeArrayValues() public {
    amounts.push(500e18);
    numOfApprovers.push(2);
    amounts.push(1000e18);
    numOfApprovers.push(3);
  }

  function clearArrayValues() public {
    amounts.pop();
    amounts.pop();
    numOfApprovers.pop();
    numOfApprovers.pop();
  }

  function sendMessage(bytes memory payload) public {
    bytes32 cmdId = bytes32(
      0x9991faa1f435675159ffae64b66d7ecfdb55c29755869a18db8497b4392347e0
    );
    string memory srcChain = "arbitrum";
    string memory srcAddress = "0xce16F69375520ab01377ce7B88f5BA8C48F8D666";

    approve_message(
      cmdId,
      srcChain,
      srcAddress,
      address(destinationBridge),
      keccak256(payload)
    );

    destinationBridge.execute(cmdId, srcChain, srcAddress, payload);
  }

  function approve_message(
    bytes32 cmdId,
    string memory srcChain,
    string memory srcAddress,
    address dstContract,
    bytes32 payloadHash
  ) public {
    bytes32 key = keccak256(
      abi.encode(
        PREFIX_CONTRACT_CALL_APPROVED,
        cmdId,
        srcChain,
        srcAddress,
        dstContract,
        payloadHash
      )
    );
    bytes32 keyBool = keccak256(abi.encode(key, uint256(4)));
    vm.store(address(gateway_eth), keyBool, bytes32(uint256(1)));
  }

  function test_set_threshold_arbitrum() public {
    initializeArrayValues();
    vm.prank(guardian);
    destinationBridge.setThresholds(arb, amounts, numOfApprovers);
    clearArrayValues();
  }

  function remove_threshold_arbitrum() public {
    uint256[] memory toSet = new uint256[](0);
    vm.startPrank(guardian);
    destinationBridge.setThresholds(arb, toSet, toSet);
    vm.stopPrank();
  }
}

interface IGatewayAdmin {
  function deployToken(bytes calldata params, bytes32) external;
}
