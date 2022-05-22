//import solidityf

pragma solidity ^0.4.0;

contract simpleContract {
   //block
   block.number; //block of information that is in the ETHEREUM
   block.difficulty;
   block.coinbase(); //few examples of what I can access from the block.
    //message
    msg.sender;
    msg.value;
    msg.data; //metadata
    //transaction
    tx.origin;

   
}   



