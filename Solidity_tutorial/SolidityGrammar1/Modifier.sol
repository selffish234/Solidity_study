// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Address {
    string public name;
    string public symbol;
    mapping(address => uint) public coin; // 괄호안에는 input타입과 output타입을 적어주면 됨 (input => output)
    //uint 형태의 coin을 사용하면 누가 몇개의 코인을 가지고 있는지 알 수 없다.

    address public owner;

    modifier checkCoin(uint _amount) {
        require(coin[msg.sender] >= _amount, "Not Enough Coin.");
        _; // _로 함수를 넘겨준다는 뜻
    } //하나의 modifier를 만들어서 여러번 사용가능


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

        coin[msg.sender] = coin[msg.sender] + _coin;
    }

    function send(address _to, uint _amount) public checkCoin(_amount) { //modifier 사용으로 코드의 재사용성 증가
        coin[msg.sender] = coin[msg.sender] - _amount;
        coin[_to] = coin[_to] + _amount;
    }

    function burn(uint _amount) public checkCoin(_amount) { //modifier 사용으로 코드의 재사용성 증가
        coin[msg.sender] = coin[msg.sender] - _amount;
    }


}
