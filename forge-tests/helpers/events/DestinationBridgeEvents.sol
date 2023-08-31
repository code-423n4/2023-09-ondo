pragma solidity 0.8.16;

contract DestinationBridgeEvents {
  event ApproverRemoved(address approver);
  event ApproverAdded(address approver);
  event ChainIdSupported(string srcChain, string approvedSource);
  event ThresholdSet(string chain, uint256[] amounts, uint256[] numOfApprovers);
  event ThresholdRemoved(uint256 chainId, uint256 index);
  event BridgeCompleted(address user, uint256 amount);
  event InstantMintLimitSet(uint256 instantMintLimit);
  event InstantRedemptionLimitSet(uint256 instantRedemptionLimit);
  event InstantMintLimitDurationSet(uint256 instantMintLimitDuration);
  event InstantRedemptionLimitDurationSet(uint256 redemptionLimitDuration);
  event Paused(address account);
  event Unpaused(address account);
  event MintLimitSet(uint256 mintLimit);
  event MintLimitDurationSet(uint256 instantMintLimitDuration);
}
