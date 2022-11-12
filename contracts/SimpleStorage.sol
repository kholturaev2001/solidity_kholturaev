// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

contract SimpleProject {
   uint256 favoriteNumber;

   struct People {
       uint256 favoriteNumber;
       string name;
   }


    // uint256[] public favoriteNumberList;  
    People[] public people;

   function store(uint256 _favoriteNumber) public  {
       favoriteNumber = _favoriteNumber;
    //    retrieve();
   }

   //view, pure
   function retrieve() public view returns(uint256) {
       return favoriteNumber;
   }

    function addPerson(string memory _name, uint256 _favoriteNumber) public {
        People memory newPerson = People({favoriteNumber: _favoriteNumber, name: _name});
        people.push(newPerson);
    }






}


