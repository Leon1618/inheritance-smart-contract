//import solidityf

pragma solidity ^0.4.0;

contract simpleContract {
  function calcs(uint _a, uint _b) public pure //between the parenthesis I put the input     //is it a PUBLIC or PRIVATE function?
  returns (uint o_sum, uint o_product) {
     o_sum = _a + _b;
     o_product = _a * _b;
      
  }
}   



