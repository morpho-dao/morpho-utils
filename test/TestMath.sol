// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.0;

import "forge-std/Test.sol";
import "src/Math.sol";
import "./references/RefMath.sol";

contract TestMath is Test {
    function testMin(uint256 x, uint256 y) public {
        assertEq(Math.min(x, y), RefMath.min(x, y));
    }

    function testMax(uint256 x, uint256 y) public {
        assertEq(Math.max(x, y), RefMath.max(x, y));
    }

    function testGasMin() public pure {
        Math.min(1, 2);
        Math.min(2, 1);
    }

    function testGasRefMin() public pure {
        RefMath.min(1, 2);
        RefMath.min(2, 1);
    }

    function testGasMax() public pure {
        Math.max(1, 2);
        Math.max(2, 1);
    }

    function testGasRefMax() public pure {
        RefMath.max(1, 2);
        RefMath.max(2, 1);
    }
}
