// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Faucet {
    uint public faucetBalance = 0;
    
    function aid() public payable {
        faucetBalance += msg.value;
    }
}