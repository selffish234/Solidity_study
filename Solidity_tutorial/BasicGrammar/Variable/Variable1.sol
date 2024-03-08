// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Variable1 {
    string public myName = "selffish234"; // string형 publuc 변수 myName에 "selffish234"라는 문자열을 담음
    // 정적타입언어라고 함, public은 가시성과 관련됨

    int8 public number1 = 23; // int는 정수값들을 담는 변수
    uint16 public number2 = 4848; // uint는 양의 정수값들을 담는 변수
    //uint와 int뒤에 오는 수들은 어느범위까지 숫자를 담을 수 있는지 알려줌
    // 붙이지 않는가면 그냥 256으로 간주 

    bool public isChecked = true; // ture, false 만 담을 수 있음
    // 0은 false, 1는 true
    
    

}