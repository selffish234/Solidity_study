// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;
contract viewPure {
    string public myName = "selffish";

    function setMyName(string memory _myName) public {
        myName = _myName;
    } // 일반함수는 블록체인상에서 가져온 값을 기록하고 변경할 수 있다. 상태변경

    function getMyName() public view returns(string memory) {
        return myName;
    } // view 함수는 상태를 가져올 수 는 있지만 바로 return만 해줌
    // 블록체인상에 접근해서 어떠한 값을 가져오고자 할때는 view함수 사용

    function sayMyName() public pure returns(string memory) {
        return "selffish"; // 블록체인상에 접근하지 않고 특정한 값을 전송하고자 한다면 pure함수 사용
        // 연산도 가능하지만 블록체인 접근없이 함수내에서 모두 처리됨 
    }
}