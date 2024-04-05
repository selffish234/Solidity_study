// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract FuncMint is ERC20 {
    constructor() ERC20("selffish Coin", "selffish") {}
//mint는 internal로 구현돼 있다, internal은 해당 smart contract와 상속받은 smart contract까지 사용이 가능하다.
//따로 _mint 함수를 public함수로 만들어서 _mint를 실행시켜주어야함

    function mintCoin(uint _amount) public { //public 이기때문에 누구나 mint함수를 실행가능하다.
    _mint(msg.sender, _amount * 10**18); //deciaml 때문에 _amount에 10**18을 곱해주어야 한다.
    }
}