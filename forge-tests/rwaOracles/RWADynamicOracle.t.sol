pragma solidity 0.8.16;

import "contracts/rwaOracles/RWADynamicOracle.sol";
import "lib/forge-std/src/console.sol";
import "forge-tests/USDY_BasicDeployment.sol";

contract Test_Dynamic_Oracle is USDY_BasicDeployment {
  uint256 periodStart = 1690833600; // JUL 31 8pm UTC
  uint256 periodEnd = 1693512000; // AUG 31 8pm UTC
  uint256 dailyIR = 1.00013368 * 1e27; // (1 + Daily IR, scaled to 1e27),
  uint256 dailyIR_oct = 1.00018538 * 1e27;
  uint256 rangeStartPrice = 1e18; // Range Initial price

  function setUp() public override {
    oracleUSDY = new RWADynamicOracle(
      address(this),
      address(this),
      address(this),
      periodStart,
      periodEnd,
      dailyIR,
      rangeStartPrice
    );
    setRangeFirst();
    vm.warp(periodStart);
  }

  /*//////////////////////////////////////////////////////////////
                    Access Controlled Functions
  //////////////////////////////////////////////////////////////*/
  function test_pause_fail_accessControl() public {
    vm.expectRevert(_formatACRevert(address(alice), oracleUSDY.PAUSER_ROLE()));
    vm.prank(alice);
    oracleUSDY.pauseOracle();
  }

  function test_unpause_fail_accessControl() public {
    test_pause_oracleUSDY();

    vm.expectRevert();
    vm.prank(alice);
    oracleUSDY.unpauseOracle();

    assertTrue(oracleUSDY.paused());
  }

  function test_dynamicOracle_cannotSetRange_accessControl() public {
    vm.expectRevert(_formatACRevert(address(alice), oracleUSDY.SETTER_ROLE()));
    vm.prank(alice);
    oracleUSDY.setRange(periodEnd + 30 days, dailyIR);
  }

  function test_dynamicOracle_cannotModifySetRange_accessControl() public {
    vm.expectRevert();
    vm.prank(alice);
    oracleUSDY.overrideRange(
      0,
      periodEnd,
      periodEnd + 30 days,
      dailyIR,
      100 * 1e18
    );
  }

  function test_pause_oracleUSDY() public {
    oracleUSDY.pauseOracle();
    assertTrue(oracleUSDY.paused());

    vm.expectRevert(bytes("Pausable: paused"));
    oracleUSDY.getPrice();

    vm.expectRevert(bytes("Pausable: paused"));
    oracleUSDY.getPriceData();
  }

  function test_unpause_oracleUSDY() public {
    test_pause_oracleUSDY();

    oracleUSDY.unpauseOracle();
    assertFalse(oracleUSDY.paused());
    assertEq(oracleUSDY.getPrice(), 1e18);
  }

  function test_dynamicOracle_setRange() public {
    vm.expectEmit(true, true, true, true);
    emit RangeSet(
      1,
      periodEnd,
      periodEnd + 30 days,
      dailyIR,
      1.00401818 * 1e18
    );
    oracleUSDY.setRange(periodEnd + 30 days, dailyIR);
  }

  function test_dynamicOracle_setRange_invalidRange() public {
    vm.expectRevert(RWADynamicOracle.InvalidRange.selector);
    oracleUSDY.setRange(periodEnd - 10 days, dailyIR);
  }

  function test_dynamicOracle_overrideRange() public {
    vm.expectEmit(true, true, true, true);
    emit RangeOverriden(0, periodStart, periodEnd, dailyIR, 100 * 1e18);
    oracleUSDY.overrideRange(0, periodStart, periodEnd, dailyIR, 100 * 1e18);
    uint256 price = oracleUSDY.getPrice();
    assertEq(price, 100 * 1e18);
  }

  function test_dynamicOracle_overrideRange_fail_invalidStartEndTimes() public {
    vm.expectRevert(RWADynamicOracle.InvalidRange.selector);
    oracleUSDY.overrideRange(
      0,
      periodStart,
      periodStart - 1,
      dailyIR,
      100 * 1e18
    );
  }

  function test_dynamicOracle_overrideRange_firstRangeOnly() public {
    oracleUSDY.overrideRange(
      0,
      periodStart + 1,
      periodEnd - 1,
      dailyIR,
      100 * 1e18
    );
    (uint256 start, uint256 end, , ) = oracleUSDY.ranges(0);
    assertEq(start, periodStart + 1);
    assertEq(end, periodEnd - 1);
  }

  function test_dynamicOracle_overrideRange_fail_firstRange_endTooLate()
    public
  {
    setSeptRange();
    vm.expectRevert(RWADynamicOracle.InvalidRange.selector);
    oracleUSDY.overrideRange(
      0,
      periodStart,
      periodEnd + 31 days,
      dailyIR,
      100 * 1e18
    );
  }

  function test_dynamicOracle_overrideRange_firstRange_startEarlier() public {
    setSeptRange();
    oracleUSDY.overrideRange(
      0,
      periodStart - 1,
      periodEnd,
      dailyIR,
      100 * 1e18
    );
    (uint256 start, uint256 end, , ) = oracleUSDY.ranges(0);
    assertEq(start, periodStart - 1);
    assertEq(end, periodEnd);
  }

  function test_dynamicOracle_overrideRange_fail_lastRange_startTooEarly()
    public
  {
    setSeptRange();
    vm.expectRevert(RWADynamicOracle.InvalidRange.selector);
    oracleUSDY.overrideRange(
      1,
      periodEnd - 1,
      periodEnd + 30 days,
      dailyIR,
      100 * 1e18
    );
  }

  function test_dynamicOracle_overrideRange_lastRange_shortenFullWindow()
    public
  {
    setSeptRange();
    oracleUSDY.overrideRange(
      1,
      periodEnd + 1 days,
      periodEnd + 29 days, // End is originally periodEnd + 30 days
      dailyIR,
      100 * 1e18
    );
    (uint256 start, uint256 end, , ) = oracleUSDY.ranges(1);
    assertEq(start, periodEnd + 1 days);
    assertEq(end, periodEnd + 29 days);
  }

  function test_dynamicOracle_overrideRange_fail_midRange_startTooEarly()
    public
  {
    setSeptRange();
    setOctRange();
    vm.expectRevert(RWADynamicOracle.InvalidRange.selector);
    oracleUSDY.overrideRange(
      1,
      periodStart - 1,
      periodEnd + 30 days,
      dailyIR,
      100 * 1e18
    );
  }

  function test_dynamicOracle_overrideRange_fail_midRange_endTooLate() public {
    setSeptRange();
    setOctRange();
    vm.expectRevert(RWADynamicOracle.InvalidRange.selector);
    oracleUSDY.overrideRange(
      1,
      periodStart,
      periodEnd + 31 days,
      dailyIR,
      100 * 1e18
    );
  }

  function test_dynamicOracle_overrideRange_midRange_shortenFullWindow()
    public
  {
    setSeptRange();
    setOctRange();
    oracleUSDY.overrideRange(
      1,
      periodEnd + 1 days,
      periodEnd + 29 days, // End is originally periodEnd + 30 days
      dailyIR,
      100 * 1e18
    );
    (uint256 start, uint256 end, , ) = oracleUSDY.ranges(1);
    assertEq(start, periodEnd + 1 days);
    assertEq(end, periodEnd + 29 days);
  }

  /*//////////////////////////////////////////////////////////////
                        Basic Tests 
  //////////////////////////////////////////////////////////////*/

  function test_dynamicOracle_getPrice_gas_benchmark() public view {
    console.log(oracleUSDY.getPrice());
  }

  function test_dynamicOracle_getPrice() public {
    vm.warp(block.timestamp + 7 days);
    (uint256 price, ) = oracleUSDY.getPriceData();
    assertAlmostEq(1.000936 * 1e18, price, 1e12);
  }

  function test_dynamicOracle_ifNoNewRangeSet_returnPrevRangeMax() public {
    vm.warp(1693540800 + 15 days);
    (uint256 price, ) = oracleUSDY.getPriceData();
    console.log("The price returned given no new period: ", price);
    assertAlmostEq(1.004018 * 1e18, price, 1e12);
  }

  function test_dynamicOracle_canSetNextRange_priorToCurrentClosing() public {
    oracleUSDY.setRange(1696132800, 1.00023368 * 1e27);
    vm.warp(periodStart + 15 days);
    (uint256 price, ) = oracleUSDY.getPriceData();
    console.log("The price returned by the oracle is: ", price);
    assertAlmostEq(1.002007 * 1e18, price, 1e12);
  }

  function test_range_that_has_not_begun_returns_prev_range_max() public {
    vm.warp(periodEnd + 1);
    (uint256 price, ) = oracleUSDY.getPriceData();
    assertEq(1004018180000000000, price);
    vm.warp(periodEnd + 100);
    (price, ) = oracleUSDY.getPriceData();
    assertEq(1004018180000000000, price);
  }

  function test_check_transition_between_ranges() public {
    test_dynamicOracle_setRange();
    vm.warp(periodEnd - 1);
    (uint256 price, ) = oracleUSDY.getPriceData();
    assertEq(1004018180000000000, price);
    vm.warp(periodEnd + 1);
    (price, ) = oracleUSDY.getPriceData();
    assertEq(1004152400000000000, price);
  }

  /*//////////////////////////////////////////////////////////////
                            Coverage Tests
  //////////////////////////////////////////////////////////////*/

  function test_dynamic_oracle_prices_august() public {
    vm.warp(1690862400);
    for (uint i = 0; i < prices_august.length; ++i) {
      (uint256 price, ) = oracleUSDY.getPriceData();
      assertEq(price, prices_august[i]);
      vm.warp(block.timestamp + 1 days);
    }
  }

  function test_can_return_correct_prices_september() public {
    test_dynamicOracle_setRange();

    vm.warp(periodEnd);
    for (uint i = 0; i < prices_september.length; ++i) {
      (uint256 price, ) = oracleUSDY.getPriceData();
      assertEq(price, prices_september[i]);
      vm.warp(block.timestamp + 1 days);
    }
  }

  function test_can_return_correct_prices_oct() public {
    test_dynamicOracle_setRange();
    oracleUSDY.setRange(periodEnd + 61 days, dailyIR_oct);
    vm.warp(periodEnd + 30 days);
    for (uint i = 0; i < prices_october.length; ++i) {
      (uint256 price, ) = oracleUSDY.getPriceData();
      assertEq(price, prices_october[i]);
      vm.warp(block.timestamp + 1 days);
    }
  }

  /*//////////////////////////////////////////////////////////////
                        Simulate Range 
  //////////////////////////////////////////////////////////////*/
  uint256[] simulatedResults;

  function test_prices_match_simulated_range_august() public {
    oracleUSDY = new RWADynamicOracle(
      address(this),
      address(this),
      address(this),
      periodStart,
      periodEnd,
      dailyIR,
      rangeStartPrice
    );

    uint256 time = periodStart;
    for (uint i = 0; i < 40; ++i) {
      uint256 price = oracleUSDY.simulateRange(
        time,
        dailyIR,
        periodEnd,
        periodStart,
        rangeStartPrice
      );
      time += 1 days;
      console.log("The derived price is: ", price);
      simulatedResults.push(price);
    }

    // Ensure all range prices match those simulated
    for (uint i = 0; i < simulatedResults.length; ++i) {
      assertEq(oracleUSDY.getPrice(), simulatedResults[i]);
      vm.warp(block.timestamp + 1 days);
    }
  }

  function test_prices_match_simulated_range_september() public {
    uint256 time = periodEnd;
    for (uint i = 0; i < 40; ++i) {
      uint256 price = oracleUSDY.simulateRange(
        time,
        dailyIR,
        periodEnd + 30 days,
        0,
        0
      );
      time += 1 days;
      console.log("The derived price is: ", price);
      simulatedResults.push(price);
    }

    // Set the range
    test_dynamicOracle_setRange();

    vm.warp(periodEnd);
    for (uint i = 0; i < simulatedResults.length; ++i) {
      console.log(" The time period: ", i);
      assertEq(oracleUSDY.getPrice(), simulatedResults[i]);
      vm.warp(block.timestamp + 1 days);
    }
  }

  function test_ranges_are_contiguous() public {
    uint256 augustRangeMax = 1004018180000000000;
    uint256 septemberStartPrice = 1004152400000000000;
    uint256 septemberRangeMax = 1008052510000000000;
    setRangeFirst();
    test_dynamicOracle_setRange();

    vm.warp(periodEnd - 1);
    assertEq(augustRangeMax, oracleUSDY.getPrice());

    vm.warp(periodEnd);
    assertEq(septemberStartPrice, oracleUSDY.getPrice());

    vm.warp(periodEnd + 1);
    assertEq(septemberStartPrice, oracleUSDY.getPrice());

    vm.warp(periodEnd + 30 days - 1);
    assertEq(septemberRangeMax, oracleUSDY.getPrice());

    vm.warp(periodEnd + 30 days);
    assertEq(septemberRangeMax, oracleUSDY.getPrice());

    vm.warp(periodEnd + 30 days + 1);
    assertEq(septemberRangeMax, oracleUSDY.getPrice());
  }

  function test_range_if_range_not_begun_return_0() public {
    vm.warp(periodStart - 2 days);
    uint256 res = oracleUSDY.getPrice();
    assertEq(res, 0);
  }

  function test_can_fuzz_past_ranges() public {
    test_dynamicOracle_setRange();
    uint256 time = periodStart - 1;
    for (uint i = 0; i < 100; ++i) {
      uint256 price = oracleUSDY.simulateRange(
        0,
        periodEnd + 60 days,
        dailyIR,
        0,
        time
      );
      time += 1 days;
      simulatedResults.push(price);
    }

    for (uint i = 0; i < simulatedResults.length; ++i) {
      console.log(simulatedResults[i]);
    }
  }

  function test_set_two_months_in_advance() public {
    test_dynamicOracle_setRange();
    setOctRange();

    for (uint i = 0; i < prices_august.length; ++i) {
      (uint256 price, ) = oracleUSDY.getPriceData();
      assertEq(price, prices_august[i]);
      vm.warp(block.timestamp + 1 days);
    }

    for (uint i = 0; i < prices_september.length; ++i) {
      (uint256 price, ) = oracleUSDY.getPriceData();
      assertEq(price, prices_september[i]);
      vm.warp(block.timestamp + 1 days);
    }
    vm.warp(periodEnd + 30 days);
    for (uint i = 0; i < prices_october.length; ++i) {
      (uint256 price, ) = oracleUSDY.getPriceData();
      assertEq(price, prices_october[i]);
      vm.warp(block.timestamp + 1 days);
    }
  }

  /*//////////////////////////////////////////////////////////////
                            Helpers 
  //////////////////////////////////////////////////////////////*/
  function setRangeFirst() public {
    oracleUSDY.overrideRange(
      0,
      periodStart,
      periodEnd,
      dailyIR,
      rangeStartPrice
    );
  }

  function setOctRange() public {
    oracleUSDY.setRange(periodEnd + 61 days, dailyIR_oct);
  }

  function setSeptRange() public {
    oracleUSDY.setRange(periodEnd + 30 days, dailyIR);
  }

  uint64[31] prices_august = [
    1.00 * 1e18,
    1.00013368 * 1e18,
    1.00026738 * 1e18,
    1.00040109 * 1e18,
    1.00053483 * 1e18,
    1.00066858 * 1e18,
    1.00080235 * 1e18,
    1.00093614 * 1e18,
    1.00106994 * 1e18,
    1.00120376 * 1e18,
    1.00133760 * 1e18,
    1.00147146 * 1e18,
    1.00160534 * 1e18,
    1.00173923 * 1e18,
    1.00187315 * 1e18,
    1.00200708 * 1e18,
    1.00214103 * 1e18,
    1.00227499 * 1e18,
    1.00240898 * 1e18,
    1.00254298 * 1e18,
    1.00267700 * 1e18,
    1.00281104 * 1e18,
    1.00294509 * 1e18,
    1.00307917 * 1e18,
    1.00321326 * 1e18,
    1.00334737 * 1e18,
    1.00348149 * 1e18,
    1.00361564 * 1e18,
    1.00374980 * 1e18,
    1.00388398 * 1e18,
    1.00401818 * 1e18
  ];
  uint64[30] prices_september = [
    1.00415240 * 1e18,
    1.00428663 * 1e18,
    1.00442089 * 1e18,
    1.00455516 * 1e18,
    1.00468945 * 1e18,
    1.00482375 * 1e18,
    1.00495808 * 1e18,
    1.00509242 * 1e18,
    1.00522678 * 1e18,
    1.00536116 * 1e18,
    1.00549556 * 1e18,
    1.00562997 * 1e18,
    1.00576440 * 1e18,
    1.00589885 * 1e18,
    1.00603332 * 1e18,
    1.00616781 * 1e18,
    1.00630231 * 1e18,
    1.00643684 * 1e18,
    1.00657138 * 1e18,
    1.00670593 * 1e18,
    1.00684051 * 1e18,
    1.00697511 * 1e18,
    1.00710972 * 1e18,
    1.00724435 * 1e18,
    1.00737900 * 1e18,
    1.00751366 * 1e18,
    1.00764835 * 1e18,
    1.00778305 * 1e18,
    1.00791777 * 1e18,
    1.00805251 * 1e18
  ];
  uint64[31] prices_october = [
    1.00823938 * 1e18,
    1.00842629 * 1e18,
    1.00861323 * 1e18,
    1.00880021 * 1e18,
    1.00898722 * 1e18,
    1.00917427 * 1e18,
    1.00936135 * 1e18,
    1.00954846 * 1e18,
    1.00973561 * 1e18,
    1.00992280 * 1e18,
    1.01011002 * 1e18,
    1.01029727 * 1e18,
    1.01048456 * 1e18,
    1.01067188 * 1e18,
    1.01085924 * 1e18,
    1.01104664 * 1e18,
    1.01123406 * 1e18,
    1.01142153 * 1e18,
    1.01160902 * 1e18,
    1.01179655 * 1e18,
    1.01198412 * 1e18,
    1.01217172 * 1e18,
    1.01235936 * 1e18,
    1.01254703 * 1e18,
    1.01273474 * 1e18,
    1.01292248 * 1e18,
    1.01311025 * 1e18,
    1.01329806 * 1e18,
    1.01348591 * 1e18,
    1.01367379 * 1e18,
    1.01386170 * 1e18
  ];

  struct Range {
    uint256 start;
    uint256 end;
    uint256 dailyInterestRate;
    uint256 lastPriceSet;
  }

  event RangeSet(
    uint256 indexed index,
    uint256 start,
    uint256 end,
    uint256 dailyInterestRate,
    uint256 lastPriceSet
  );

  event RangeOverriden(
    uint256 indexed index,
    uint256 newStart,
    uint256 newEnd,
    uint256 newDailyInterestRate,
    uint256 newLastPriceSet
  );
}
