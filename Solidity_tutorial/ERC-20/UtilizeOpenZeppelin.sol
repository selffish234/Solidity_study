// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract UtilizeOpenZeppelin is ERC20 {
    constructor() ERC20("selffish Coin", "selffish") {}
}
// decimals() -> uint8, 이더리움과 똑같은 단위체계를 가지고 있다.