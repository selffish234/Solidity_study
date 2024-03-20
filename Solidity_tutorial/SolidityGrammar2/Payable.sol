// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
// A가 B에게 코인을 전송하는 로직을 만들때 payable 함수를 구현해야함

contract Payable {
    function transfer(address _to) public payable {
        uint sendAmount = msg.value; // value는 프롬프트에서 입력

        payable(_to).transfer(sendAmount);
    }
}