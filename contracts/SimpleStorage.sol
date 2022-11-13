// SPDX-License-Identifier: MIT

// EVM, Ethereum Virtual Machine
// Avalanche, Fantom, Polygon 

pragma solidity ^0.8.6;

contract SimpleStorage {

   uint256 favoriteNumber;

    mapping(string => uint256) public nameToFavoriteNumber;


   struct People {
       uint256 favoriteNumber;
       string name;
   }


    // uint256[] public favoriteNumberList;  
    People[] public people;

   function store(uint256 _favoriteNumber) public virtual {
       favoriteNumber = _favoriteNumber;
    //    retrieve();
   }

   //view, pure
   function retrieve() public view returns(uint256) {
       return favoriteNumber;
   }

    // calldata, memory, storage - 3 main ways to store information. The others one are STACK, CODE, LOGS.
    // MEMORY exists temporarily, is mutable
    // CALLDATA exists temporarilt, is not mutable
    // STORAGE varibale exist even outside just a function exucuted

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        people.push(People(_favoriteNumber, _name));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}


