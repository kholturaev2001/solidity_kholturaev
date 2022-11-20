// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract SafeMathTester{
    uint8 public bigNumber = 255; // before, in ^0.6.0 it was unchecked, but now the value of uin8 is checked, and the contract wouldn't compile

    function add() public {
        bigNumber = bigNumber + 1;
    }
}