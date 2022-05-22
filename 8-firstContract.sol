//import solidityf

pragma solidity ^0.4.0;

contract Inheritance {
    address owner;
    bool deceased;
    uint money;

    constructor() public payable { //builds an INSTANCE of the variables
      owner = msg.sender;
      money = msg.value;
      deceased = false;

    } 
    
    address[] wallets;

    mapping (addres => uint) Inheritance
 

}   



