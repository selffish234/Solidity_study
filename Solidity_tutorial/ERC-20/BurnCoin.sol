// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

import "./Burnable.sol";

contract BurnCoin {
    Burnable myCoinContract;

    constructor(address _myCoinAddress) {
        myCoinContract = Burnable(_myCoinAddress);
    }

    function burnCoin(uint _amount) public {
        myCoinContract.burnFrom(msg.sender, _amount);
    }
}