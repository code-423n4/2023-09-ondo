pragma solidity 0.8.16;

import "contracts/rwaOracles/RWADynamicOracle.sol";
import "lib/forge-std/src/console.sol";
import "forge-tests/USDY_BasicDeployment.sol";

contract Test_rUSDY_dynamic_rebase is USDY_BasicDeployment {
  uint256 periodStart = 1690833600; // JUL 31 8pm UTC
  uint256 periodEnd = 1693512000; // AUG 31 8pm UTC
  uint256 dailyIR = 1.00013368 * 1e27; // (1 + Daily IR, scaled to 1e27),
  uint256 rangeStartPrice = 1e18; // Range Initial price

  function setUp() public override {
    super.setUp();
    oracleUSDY.overrideRange(
      0,
      periodStart,
      periodEnd,
      dailyIR,
      rangeStartPrice
    );
    vm.warp(periodStart + 1);
  }

  function test_rUSDY_wrap_auto_rebase() public dealAlice {
    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), 100e18);
    rUSDYToken.wrap(100e18);
    vm.stopPrank();

    assertEq(100e18, rUSDYToken.balanceOf(alice));
    assertEq(10_000 * 100e18, rUSDYToken.sharesOf(alice));

    vm.warp(block.timestamp + 1 days);
    assertEq(100.013368 * 1e18, rUSDYToken.balanceOf(alice));
    assertEq(10_000 * 100e18, rUSDYToken.sharesOf(alice));

    vm.warp(block.timestamp + 1 days);
    assertEq(100.026738 * 1e18, rUSDYToken.balanceOf(alice));
    assertEq(10_000 * 100e18, rUSDYToken.sharesOf(alice));

    vm.warp(block.timestamp + 1 days);
    assertEq(100.040109 * 1e18, rUSDYToken.balanceOf(alice));
    assertEq(10_000 * 100e18, rUSDYToken.sharesOf(alice));

    vm.warp(block.timestamp + 1 days);
    assertEq(100.053483 * 1e18, rUSDYToken.balanceOf(alice));
    assertEq(10_000 * 100e18, rUSDYToken.sharesOf(alice));

    vm.warp(block.timestamp + 1 days);
    assertEq(100.066858 * 1e18, rUSDYToken.balanceOf(alice));
    assertEq(10_000 * 100e18, rUSDYToken.sharesOf(alice));
  }

  function test_rUSDY_wrap_wait_unwrap() public dealAlice {
    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), 100e18);
    rUSDYToken.wrap(100e18);
    vm.stopPrank();

    vm.warp(block.timestamp + 15 days);

    console.log("The new balance of alice: ", rUSDYToken.balanceOf(alice));
    console.log("The usdy balance of alice: ", usdy.balanceOf(alice));

    vm.startPrank(alice);
    rUSDYToken.unwrap(rUSDYToken.balanceOf(alice));
    vm.stopPrank();

    console.log("The new balance of alice: ", rUSDYToken.balanceOf(alice));
    console.log("The usdy balance of alice: ", usdy.balanceOf(alice));
  }

  modifier dealAlice() {
    _mintRWAToUser(alice, 100e18);
    _;
  }
}
