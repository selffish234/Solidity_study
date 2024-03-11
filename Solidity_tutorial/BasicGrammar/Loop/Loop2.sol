// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Loop1 {
    uint public number = 0;

    function add(uint count) public returns(uint sum)  {
        for(uint i = 1; i <= count; i++) {
            number += i;
        }
        return number;
    }
}