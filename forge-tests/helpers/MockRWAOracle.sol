// SPDX-License-Identifier: UNLICENSED
pragma solidity 0.8.16;

import "contracts/interfaces/IRWAOracle.sol";

contract MockRWAOracle is IRWAOracle {
  uint256 public price;

  constructor(uint256 _price) {
    price = _price;
  }

  function setPrice(uint256 _price) external {
    price = _price;
  }

  function getPriceData() external view override returns (uint256, uint256) {
    return (price, block.timestamp);
  }
}
