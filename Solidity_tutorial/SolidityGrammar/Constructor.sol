// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Constructor {
    string public name;
    string public symbol;
    uint public coin;

    constructor(string memory _name, string memory _symbol, uint _coin) {
        name = _name;
        symbol = _symbol;
        coin = _coin;
    } // 소괄호 파라마터, 중괄호 로직, 하나의 contract 당 하나의 constructor 만 가능
    //constructor을 사용하면 smart contract를 배포하는 시점에서 실행되어야 할 내용 정의 가능
}