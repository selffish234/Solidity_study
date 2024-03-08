// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Function2 {

    uint public myMoney = 10;

    function add1() public {
        myMoney += 1;
    }

    function add2() public {
        myMoney += 2;
    }

    function add10() public {
        myMoney += 10;
    }

    function add(uint addNumber) public {
        myMoney += addNumber; // ()안에 실제 수가 아닌 그냥 변수자체를 넣음으로 유연한 함수사용이 가능해짐
    }

    function checkMyMoney() public view returns(uint) { // return을 받고 싶다면 public 뒤 returns(자료형) 을 적어야 함
        return myMoney; // return함수는 단순히 값을 리턴해 준다.
    }

}