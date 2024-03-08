// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Function {
    uint public myMoney = 10;

    function add() public { // 가스비가 들어가는 함수는 주황색으로 표시됨
        myMoney += 1;
    }
    
    function substract() public {
        myMoney -= 1;
    }
}