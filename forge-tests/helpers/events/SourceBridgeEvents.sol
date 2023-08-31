pragma solidity 0.8.16;

contract SourceBridgeEvents {
  event DestinationChainContractAddressSet(
    string indexed destinationChain,
    address contractAddress
  );
  event Paused(address account);
  event Unpaused(address account);

  // Axelar Events
  event ContractCall(
    address indexed sender,
    string destinationChain,
    string destinationContractAddress,
    bytes32 indexed payloadHash,
    bytes payload
  );
  event NativeGasPaidForContractCall(
    address indexed sourceAddress,
    string destinationChain,
    string destinationAddress,
    bytes32 indexed payloadHash,
    uint256 gasFeeAmount,
    address refundAddress
  );
}
