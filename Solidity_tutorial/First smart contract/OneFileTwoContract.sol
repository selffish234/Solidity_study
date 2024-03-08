// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract A {
    string public name = "A";
}

contract B {
    string public name = "B";
}
// 하나의 파일안에 있어도 contract 단위가 다르면 각각 배포해야함
// 보통은 하나의 솔리티디 파일안에 contract도 solidity 파일명과 같게 만들곤함