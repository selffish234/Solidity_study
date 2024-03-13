// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Address {
    string public name;
    string public symbol;
    uint public coin;

    address public owner;


    constructor(string memory _name, string memory _symbol) {
        name = _name;
        symbol = _symbol;

        owner = msg.sender;
    } 
// 코인을 생성하는 함수를 mint함수라고 함
// 코인 생성은 owner계정만 가능하게 해야함
    function mint(uint _coin) public {
        //특정한 조건을 만족했을때 구현되는 함수를 구현하려면 require를 사용할 수 있음
        require(owner == msg.sender, "U R not owner."); // 코인 생성은 owner계정만 가능하게 함, 두번째 파라미터로는 "에러메시지"

        coin += _coin;
    }

    // 조건을 체크한다는 점에서 if문과 require은 비슷함
    // require문은 조건을 만족하지 않으면 함수가 실행조차 되지않아 가스비가 소비되지 않는다.
    // 하지만 if문은 실행되는순간 가스비가 소비됨

    function mint2(uint _coin) public {
        if(owner == msg.sender) { 
        coin += _coin;
        }
    }
}