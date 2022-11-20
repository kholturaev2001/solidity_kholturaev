// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import "./PriceConverter.sol";

contract FundMe {
    using PriceConverter for uint256;

    uint256 public minimumUsd = 50 * 1e18;

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    address public owner;

    // constructor function gets immediately called in the same transaction when you deploy the contract
    constructor() {
        owner = msg.sender;
    }

    function fund() public payable {
        require(
            msg.value.getConversionRate() >= minimumUsd,
            "Didn't send enough!"
        ); // 1e18 = 1 * 10 ** 18 == 1000000000000000000
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw() public onlyOwner /* Hey, with this function before you read all this code inside of it look down at the onlyOwner modifier and do whatever it this first and then do whatever underschol (_; === doing the rest of the code) */ {
        /* starting index, ending index, step amount */
        for (
            uint256 funderIndex = 0;
            funderIndex < funders.length;
            funderIndex++
        ) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }
        // reset the array 'funders' with brand new address array with '0' object in it to start
        funders = new address[](0);

        // actually withdraw the funds

        // call
        (bool callSuccess, ) = payable(msg.sender).call{value: address(this).balance}("");
        require(callSuccess, "Call failed");
    }

    modifier onlyOwner {
        require(msg.sender == owner, "Sender is not owner!");
        _;
    }
}
