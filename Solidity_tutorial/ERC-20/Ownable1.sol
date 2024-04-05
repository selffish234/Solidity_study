// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
//Ownable은 smart contract account 주인을 체크하고 그 주인만 실행 할 수 있게하는 주인 관련 편의기능 제공
//주소는 address(지갑주소) 형식으로 지정

contract Ownable1 is ERC20, Ownable {
    constructor() ERC20("selffish Coin", "selffish") Ownable(address(0x9d149Aeed23eC26453037feF199127DFdF31ddE2)) {}
// Ownable(해당 계정의 주소)
    function mintCoin(uint _amount) public onlyOwner {
        _mint(msg.sender, _amount * 10**18);
    }
}