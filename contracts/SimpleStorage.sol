// SPDX-License-Identifier: MIT

pragma solidity ^0.8.6;

contract SimpleProject {
   uint256 public favoriteNumber;

   function store(uint256 _favoriteNumber) public  {
       favoriteNumber = _favoriteNumber;
    //    retrieve();
   }

   //view, pure
   function retrieve() public view returns(uint256) {
       return favoriteNumber;
   }
}