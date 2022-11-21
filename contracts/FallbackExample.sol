// SPDX-License-Identifier: MIT

pragma solidity ^0.8.7;

contract FallbackExample {
    uint256 public result; 
    
    // receive() CAN'T work when data is sent along with transaction
    receive() external payable {
        result = 1;
    }

    // fallback() CAN work even when data is sent along with transaction
    fallback() external payable {
        result = 2;
    }


}