// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    // Byte
    bytes32 public myVar = "Muhammadrasul"; 
    bytes public myDynVar = "Muhammadrasul"; 
    // 1 --> 32
    // 32 * 8 = 256;
    // uint256


    function stringIdBytes() public view returns(bytes1) {
        return myDynVar[0];
    }


    // function stringLength() public view returns(uint) {
    //     return myDynVar.length; // 13
    //     // return myVar.length; // 32
    // }




    //Array

    // /* ARRAY WITH DYNAMIC LENGTH */
    // uint256[] public items;
    // uint256 public len;

    // /* SAMPLE WITH PUSH METHOD */
    // function demoPush() public {
    //     items.push(4); // method push can not be used in arrays with fixed length
    //     items.push(5);
    //     len = items.length;
    // }

    // /* ARRAY SAVED IN MEMORY */
    // function sampleMemory() public pure returns(uint256[] memory){
    //     uint256[] memory tempArray = new uint256[](10); //set array length while creating an array in memory
    //     tempArray[0] = 20;
    //     return tempArray;
    // }

    // // Вложенные массивы
    // uint[3][2] public arrInsideArr;

    // function demoTwo() public {
    //     arrInsideArr = [
    //         [2, 54, 1],
    //         [6, 23, 77]
    //     ];
    // }

    /* ARRAY WITH FIXED LENGTH */
    // uint[10] public items;
    // function demo() public {
    //     items[0] = 100;
    //     items[1] = 200;
    //     items[4] = 400;
    // }

    // // ENUM
    // enum Status { Paid, Delivered, Recieved}

    // Status public currentStatus;

    // function pay() public {
    //     currentStatus = Status.Paid;
    // }

    // function delivered() public {
    //     currentStatus = Status.Delivered;
    // }
}
