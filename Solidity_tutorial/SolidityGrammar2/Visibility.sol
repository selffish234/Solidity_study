// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

// 총 4가지의 visibility가 존재함
// public, private, internal, external
contract Visibility {
    string public myName = "selffish";
    uint private level = 10;
    uint internal age = 23; // 부모의 internal 변수는 상속된 자식 contract에서 사용가능
    // internal 변수는 private 처럼 직접 조회는 불가능함

    function getLevel() public view returns(uint) {
        return level;
    } // 같은 contract 안이기 때문에 private 변수를 함수로 조회가능
}

// 상속, function A를 지닌 contract A를 function B와 functoin C를 지닌 contract B가 상속 받았다.
// 그렇다면 contract B는 function A, B, C를 모두 사용가능하게 된다.

contract B is Visibility {
    function getAge() public view returns(uint) {
        return age;
    }
    function publicFunc() public pure returns(string memory) {
        return "public";
    }
    function externalFunc() external pure returns(string memory) {
        return "external able";
    }

    // function callFunc() public pure returns(string memory) {
        //return externalFunc();
    //} 이렇게 contract 내부에서 external을 사용하려고 하면 오류발생
    function callFunc() public pure returns(string memory) {
        return "public possible";
    }
    // external 은 일반적인 상황에서는 잘 쓰이지 않고 주로 인터페이스 파일을 만드는데 사용됨
}