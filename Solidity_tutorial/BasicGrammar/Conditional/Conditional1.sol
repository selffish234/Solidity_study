// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Conditional1 {
    uint public level = 1;

    function levelUp() public {
        level++; // level = level + 1;
    }

    function enterDungeon() public view returns(bool) {
        if(level > 3) {
            return true;
        }
    }
}