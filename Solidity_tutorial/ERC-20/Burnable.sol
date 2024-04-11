// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";


contract Burnable is ERC20Burnable, Ownable {
    address adrs = address(0x9d149Aeed23eC26453037feF199127DFdF31ddE2);
    constructor(uint _amount) ERC20("selffish Coin", "selffish") Ownable(adrs){
        _mint(owner(), _amount);
        // owner == owner()
    }

   
}