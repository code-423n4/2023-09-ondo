pragma solidity 0.8.16;

import "forge-tests/USDY_BasicDeployment.sol";

contract Test_rUSDY is USDY_BasicDeployment {
  function setUp() public override {
    super.setUp();
    vm.prank(guardian);
    rUSDYToken.setOracle(address(oracleCheckHarnessUSDY));
  }

  /*//////////////////////////////////////////////////////////////
                            Basic Tests
  //////////////////////////////////////////////////////////////*/
  function test_rUSDY_name() public {
    string memory res = rUSDYToken.name();
    assertEq(res, "Rebasing Ondo U.S. Dollar Yield");
  }

  function test_rUSDY_symbol() public {
    string memory res = rUSDYToken.symbol();
    assertEq(res, "rUSDY");
  }

  function test_rUSDY_decimals() public {
    uint256 decimals = rUSDYToken.decimals();
    assertEq(decimals, 18);
  }

  function test_rUSDY_pause_fail_accessControl() public {
    vm.expectRevert(_formatACRevert(address(this), rUSDYToken.PAUSER_ROLE()));
    rUSDYToken.pause();
  }

  function test_rUSDY_pause() public {
    vm.prank(guardian);
    rUSDYToken.pause();
    assertTrue(rUSDYToken.paused());
  }

  function test_rUSDY_unpause_fail_accessControl() public {
    vm.expectRevert(
      _formatACRevert(address(this), rUSDYToken.USDY_MANAGER_ROLE())
    );
    rUSDYToken.unpause();
  }

  function test_rUSDY_unpause() public {
    vm.startPrank(guardian);
    rUSDYToken.pause();
    rUSDYToken.unpause();
    assertFalse(rUSDYToken.paused());
  }

  function test_rUSDY_setBlocklist_fail_accessControl() public {
    vm.expectRevert(
      _formatACRevert(address(this), rUSDYToken.LIST_CONFIGURER_ROLE())
    );
    rUSDYToken.setBlocklist(address(1));
  }

  function test_rUSDY_setBlocklist() public {
    vm.startPrank(guardian);
    rUSDYToken.setBlocklist(address(1));
    assertEq(address(rUSDYToken.blocklist()), address(1));
  }

  function test_rUSDY_setAllowlist_fail_accessControl() public {
    vm.expectRevert(
      _formatACRevert(address(this), rUSDYToken.LIST_CONFIGURER_ROLE())
    );
    rUSDYToken.setAllowlist(address(1));
  }

  function test_rUSDY_setAllowlist() public {
    vm.startPrank(guardian);
    rUSDYToken.setAllowlist(address(1));
    assertEq(address(rUSDYToken.allowlist()), address(1));
  }

  function test_rUSDY_setSanctionsList_fail_accessControl() public {
    vm.expectRevert(
      _formatACRevert(address(this), rUSDYToken.LIST_CONFIGURER_ROLE())
    );
    rUSDYToken.setSanctionsList(address(1));
  }

  function test_rUSDY_setSanctionsList() public {
    vm.startPrank(guardian);
    rUSDYToken.setSanctionsList(address(1));
    assertEq(address(rUSDYToken.sanctionsList()), address(1));
  }

  function test_rUSDY_setOracle_fail_accessControl() public {
    vm.expectRevert(
      _formatACRevert(address(this), rUSDYToken.USDY_MANAGER_ROLE())
    );
    rUSDYToken.setOracle(address(1));
  }

  function test_rUSDY_setOracle() public {
    vm.startPrank(guardian);
    rUSDYToken.setOracle(address(1));
    assertEq(address(rUSDYToken.oracle()), address(1));
  }

  /*//////////////////////////////////////////////////////////////
                        Wrap/Unwrap Tests
  //////////////////////////////////////////////////////////////*/

  function test_rUSDY_wrap() public dealAlice {
    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), 100e18);
    rUSDYToken.wrap(100e18);
    assertEq(rUSDYToken.balanceOf(alice), 100e18);
    assertEq(usdy.balanceOf(address(rUSDYToken)), 100e18);
  }

  function test_rUSDY_wrap_and_accrue() public dealAlice {
    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), 100e18);
    rUSDYToken.wrap(100e18);
    vm.stopPrank();
    // Increase usdyPrice to 1.05
    _setOraclePrice(1.05e18);
    // Assert balance post rebase
    assertEq(rUSDYToken.balanceOf(alice), 105e18);
    assertEq(usdy.balanceOf(address(rUSDYToken)), 100e18);
  }

  function test_rUSDY_wrap_paused() public dealAlice {
    vm.prank(guardian);
    rUSDYToken.pause();
    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), 100e18);
    vm.expectRevert("Pausable: paused");
    rUSDYToken.wrap(100e18);
    vm.stopPrank();
  }

  function test_rUSDY_wrap_and_unwrap() public dealAlice {
    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), 100e18);
    rUSDYToken.wrap(100e18);
    rUSDYToken.approve(address(rUSDYToken), 100e18);
    rUSDYToken.unwrap(100e18);
    vm.stopPrank();
    assertEq(rUSDYToken.balanceOf(alice), 0);
    assertEq(usdy.balanceOf(address(rUSDYToken)), 0);
    assertEq(usdy.balanceOf(alice), 100e18);
  }

  function test_rUSDY_wrap_accrue_unwrap() public dealAlice {
    // Wrap
    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), 100e18);
    rUSDYToken.wrap(100e18);
    vm.stopPrank();

    // Accrue Interest
    _setOraclePrice(1.05e18);

    // Unwrap
    vm.startPrank(alice);
    rUSDYToken.approve(address(rUSDYToken), 105e18);
    rUSDYToken.unwrap(105e18);
    vm.stopPrank();

    // Assert Balances
    assertEq(rUSDYToken.balanceOf(alice), 0);
    assertEq(rUSDYToken.totalSupply(), 0);
    assertEq(usdy.balanceOf(address(rUSDYToken)), 0);
    assertEq(usdy.balanceOf(alice), 100e18);
  }

  /*//////////////////////////////////////////////////////////////
                              Burn Tests
  //////////////////////////////////////////////////////////////*/

  function test_rUSDY_burn() public dealAndWrapAlice {
    vm.prank(alice);
    rUSDYToken.unwrap(50e18);
    // Assert Balances
    assertEq(rUSDYToken.balanceOf(alice), 50e18);
    assertEq(usdy.balanceOf(alice), 50e18);
    assertEq(usdy.balanceOf(address(rUSDYToken)), 50e18);
  }

  function test_rUSDY_cannont_unwrap_0_usdy() public dealAndWrapAlice {
    _setOraclePrice(1.05e18);
    vm.prank(alice);
    rUSDYToken.transfer(bob, 1);

    assertLt(rUSDYToken.sharesOf(bob), 10_000);
    vm.expectRevert(rUSDY.UnwrapTooSmall.selector);
    vm.prank(bob);
    rUSDYToken.unwrap(1);
  }

  function test_rUSDY_burn_accrue_partial() public dealAndWrapAlice {
    _setOraclePrice(1.05e18);
    vm.prank(alice);
    rUSDYToken.unwrap(50e18);
    // Assert Balances
    assertEq(rUSDYToken.balanceOf(alice), 55e18);
    assertEq(rUSDYToken.totalSupply(), 55e18);
    uint256 contractUSDYBalance = (uint256(55e18) * uint256(1e18)) /
      uint256(1.05e18);
    assertApproxEqRel(
      usdy.balanceOf(address(rUSDYToken)),
      contractUSDYBalance,
      1e8
    );
    assertApproxEqRel(usdy.balanceOf(alice), 100e18 - contractUSDYBalance, 1e8);
  }

  function test_rUSDY_burn_accrueFull() public dealAndWrapAlice {
    _setOraclePrice(1.05e18);
    vm.prank(alice);
    rUSDYToken.unwrap(105e18);
    // Assert Balances
    assertEq(rUSDYToken.balanceOf(alice), 0);
    assertEq(rUSDYToken.totalSupply(), 0);
    assertEq(usdy.balanceOf(alice), 100e18);
    assertEq(usdy.balanceOf(address(rUSDYToken)), 0);
  }

  function test_rUSDY_adminBurn() public dealAndWrapAlice {
    vm.prank(guardian);
    rUSDYToken.burn(alice, 100e18);
    // Assert Balances
    assertEq(rUSDYToken.balanceOf(alice), 0);
    assertEq(rUSDYToken.totalSupply(), 0);
    assertEq(usdy.balanceOf(alice), 0);
    assertEq(usdy.balanceOf(address(rUSDYToken)), 0);
    assertEq(usdy.balanceOf(guardian), 100e18);
  }

  function test_rUSDY_adminBurn_accruePartial() public dealAndWrapAlice {
    _setOraclePrice(1.05e18);
    vm.prank(guardian);
    rUSDYToken.burn(alice, 50e18);
    // Assert Balances
    assertEq(rUSDYToken.balanceOf(alice), 55e18);
    assertEq(rUSDYToken.totalSupply(), 55e18);
    assertEq(usdy.balanceOf(alice), 0);
    uint256 contractUSDYBalance = (uint256(55e18) * uint256(1e18)) /
      uint256(1.05e18);
    assertApproxEqRel(
      usdy.balanceOf(address(rUSDYToken)),
      contractUSDYBalance,
      1e8
    );
    assertApproxEqRel(
      usdy.balanceOf(guardian),
      100e18 - contractUSDYBalance,
      1e8
    );
  }

  function test_rUSDY_adminBurn_accrueFull() public dealAndWrapAlice {
    _setOraclePrice(1.05e18);
    vm.prank(guardian);
    rUSDYToken.burn(alice, 105e18);
    // Assert Balances
    assertEq(rUSDYToken.balanceOf(alice), 0);
    assertEq(rUSDYToken.totalSupply(), 0);
    assertEq(usdy.balanceOf(alice), 0);
    assertEq(usdy.balanceOf(address(rUSDYToken)), 0);
    assertEq(usdy.balanceOf(guardian), 100e18);
  }

  /**
    TODO:
    1. What if wrap < price of usdy... may need to add checks on wrap function
    2. Fuzzing values
   */

  function _setOraclePrice(uint256 price) internal {
    oracleCheckHarnessUSDY.setPrice(int256(price));
  }

  modifier dealAlice() {
    _mintRWAToUser(alice, 100e18);
    _;
  }

  modifier dealAndWrapAlice() {
    _mintRWAToUser(alice, 100e18);
    vm.startPrank(alice);
    usdy.approve(address(rUSDYToken), 100e18);
    rUSDYToken.wrap(100e18);
    vm.stopPrank();
    _;
  }
}
