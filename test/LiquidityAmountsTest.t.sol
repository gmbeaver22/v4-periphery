// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.20;

import {Test} from "forge-std/Test.sol";
import "forge-std/console.sol";
import "@uniswap/v4-core/src/libraries/FullMath.sol";
import "@uniswap/v4-core/src/libraries/FixedPoint96.sol";
import "../contracts/libraries/LiquidityAmounts.sol"; // Import the LiquidityAmounts library

contract LiquidityAmountsTest is Test {
    using LiquidityAmounts for uint160;

    function testGetLiquidityForAmount0() public {
        uint160 sqrtRatioAX96 = 1;
        uint160 sqrtRatioBX96 = 2;
        uint256 amount0 = 1;

        uint128 expectedLiquidity = 1;

        uint128 actualLiquidity = LiquidityAmounts.getLiquidityForAmount0(
            sqrtRatioAX96,
            sqrtRatioBX96,
            amount0
        );

        assertEq(actualLiquidity, expectedLiquidity);
    }
}
