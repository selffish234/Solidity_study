// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Hello {
    string public name = "h662";

    function callMyName() public view returns(string memory) {
        return name;
    }
} // 파일명과 맞춰줄 필요는 없음