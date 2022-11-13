// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FundMe {

    function fund() public payable {
        // Want to be able to set a minimum fund amount in USD
        // 1. How do we send ETH to this contract?
        require(msg.value > 1e18, "Didn't send enough!"); // 1e18 = 1 * 10 ** 18 == 1000000000000000000
    }

    // function withdraw() {}
}

