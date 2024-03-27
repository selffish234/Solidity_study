// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract Faucet {
    uint public faucetBalance = 0;
    // 10^18 wei = 1 eth
    uint public faucetAmount = 1 * 10**18;
    
    function aid() public payable {
        require(msg.value > 0, "Aid more than 0 eth.");
        faucetBalance += msg.value;
    }

    function faucet() public {
        require(faucetBalance >= faucetAmount, "Not Enough Matic.");

        payable(msg.sender).transfer(faucetAmount);
        faucetBalance -= faucetAmount;
    }
     //msg 객체에는 다양한 속성이 있으며, 주로 다음과 같이 사용됩니다:
    //msg.sender: 메시지를 보낸 계정(또는 스마트 계약)의 주소를 나타냅니다.
    //msg.value: 메시지와 함께 전송된 이더의 양을 나타냅니다.
    //msg.data: 메시지의 데이터를 나타냅니다.
    //msg.sig: 메시지의 함수 서명(함수의 해시)을 나타냅니다.
}