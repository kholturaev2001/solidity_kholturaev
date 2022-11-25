// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    // Enum 
    enum Status { Paid, Delivered, Recieved}

    Status public currentStatus;

    function pay() public {
        currentStatus = Status.Paid;
    }

    function delivered() public {
        currentStatus = Status.Delivered;
    }
}