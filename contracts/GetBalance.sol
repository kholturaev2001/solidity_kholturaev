// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Demo {
    address myAddr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    mapping (address => uint) public payments; 

    function receiveFunds() public payable {
        payments[msg.sender] = msg.value;
    }

    function transferTo(address targetAddr, uint256 amount) public {
        address payable _to = payable(targetAddr);
        _to.transfer(amount);
    }

    function getBalance(address targetAddr) public view returns(uint) {
        return targetAddr.balance;
    }


    string public myStr = "test"; // storage

    function demo(string memory newValueStr) public {
        myStr = newValueStr; 
    }
    
}