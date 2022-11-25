// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    //Array
    uint[10] public items;

    function demo() public {
        items[0] = 100;
        items[1] = 200;
        items[4] = 400;
    }

    // Вложенные массивы
    uint[3][2] public arrInsideArr;

    function demoTwo() public {
        arrInsideArr = [
            [2, 54, 1],
            [6, 23, 77]
        ];
    }



    // // Enum 
    // enum Status { Paid, Delivered, Recieved}

    // Status public currentStatus;

    // function pay() public {
    //     currentStatus = Status.Paid;
    // }

    // function delivered() public {
    //     currentStatus = Status.Delivered;
    // }
}