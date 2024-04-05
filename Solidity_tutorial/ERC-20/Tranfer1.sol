// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Transfer1 is ERC20, Ownable {
    address adrs = address(0x9d149Aeed23eC26453037feF199127DFdF31ddE2);
    constructor(uint _amount) ERC20("selffish Coin", "selffish") Ownable(adrs){
        _mint(owner(), _amount * 10**18);
        // owner == owner()
    }
}