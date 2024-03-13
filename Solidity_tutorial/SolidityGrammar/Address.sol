// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Address {
    string public name;
    string public symbol;
    uint public coin;

    address public owner; // smart contract를 배포하는 계정이 담길예정 (해당 코인의 배포자)


    constructor(string memory _name, string memory _symbol, uint _coin) {
        name = _name;
        symbol = _symbol;
        coin = _coin;

        owner = msg.sender;
        //msg.sender는 함수를 실행하는 사람의 계정을 출력함 나의 메타마스크 계좌
    } // 소괄호 파라마터, 중괄호 로직, 하나의 contract 당 하나의 constructor 만 가능
    //constructor을 사용하면 smart contract를 배포하는 시점에서 실행되어야 할 내용 정의 가능
}