pragma solidity ^0.8.7;

contract Inheritance {
    address owner;
    bool deceased;
    uint money;

    constructor() public payable { //builds an INSTANCE of the variables
      owner = msg.sender;
      money = msg.value;
      deceased = false;
    } 

    modifier oneOwner {
      require (msg.sender == owner);
      _;
    }
    
    modifier isDeceased {
      require (deceased == false); //true
      _;
    }

    address[] wallets;

    mapping (address => uint) inheritance;

    function setup(address _wallet, uint _inheritance) public oneOwner{
      wallets.push(_wallet);
      inheritance[_wallet] = _inheritance;
    }

    function moneyPaid() private isDeceased {
      for (uint i=0; 1 < wallets.length; i++) {
          wallets[i].transfer(inheritance[wallets[i]]);
      }
    }

    function died() public oneOwner {
      deceased = true;
      moneyPaid();   
    }
}   
