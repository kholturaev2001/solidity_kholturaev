// Get funds from users
// Withdraw funds
// Set a minimum funding value in USD

// SPDX-License-Identifier: MIT
pragma solidity ^0.8.6;

import "./PriceConverter.sol";

// constant, immutable - There are 2 keywords, that make it so that your varibles can't be changed

// 859,757 gas price
// 840209 gas pricee after adding constant keyword

error NotOwner();

contract FundMe {
    using PriceConverter for uint256;

    uint256 public MINIMUM_USD = 50 * 1e18;
    // 21415 - gas - constant
    // 23515 - gas - non-contant

    address[] public funders;
    mapping(address => uint256) public addressToAmountFunded;

    address public i_owner;

    // 21508 - gas - immutable
    // 23644 - gas - non-immutable

    constructor() {
        i_owner = msg.sender;
    }

    function fund() public payable {
        require(
            msg.value.getConversionRate() >= MINIMUM_USD,
            "Didn't send enough!"
        ); // 1e18 = 1 * 10 ** 18 == 1000000000000000000
        funders.push(msg.sender);
        addressToAmountFunded[msg.sender] += msg.value;
    }

    function withdraw()
        public
        onlyOwner
    /* Hey, with this function before you read all this code inside of it look down at the onlyOwner modifier and do whatever it this first and then do whatever underschol (_; === doing the rest of the code) */
    {
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
        (bool callSuccess, ) = payable(msg.sender).call{
            value: address(this).balance
        }("");
        require(callSuccess, "Call failed"); /* It is also possible to use NotWoner error here in order to reduce gas cost */
    }

    modifier onlyOwner() {
        // require(msg.sender == i_owner, NotOwner());
        if (msg.sender != i_owner) {
            revert NotOwner();
        }
        _;
    }
}
