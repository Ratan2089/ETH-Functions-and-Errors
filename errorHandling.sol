// SPDX-License-Identifier: MIT
pragma solidity ^0.8.17;

contract MyToken{
    
    constructor() {
        owner = msg.sender;
    }

    //public variables
    string public name = "trial";
    string public symbol = "TRY";
    uint public totalSupply = 0;
    address public owner;


    //emit events
    event Mint(address indexed to, uint amount);
    event Burn(address indexed from, uint amount);
    event Transfer(address indexed from, address indexed to, uint amount);

    //errors
    error InsufficientBalance(uint balance, uint withdrawAmount);


    //mapping variables
    mapping(address => uint) public balances;

   // Modifiers
    // modifier onlyOwner {
    //    assert(msg.sender == owner);
    // }

    //mint function
    function mint (address _address, uint _value) public {
        assert(msg.sender == owner);
        totalSupply += _value;
        balances[_address] += _value;
        emit Mint(_address, _value);
        
    }

    //burn function
    function burn (address _address, uint _value) public {
        assert(msg.sender == owner);
        if(balances[_address] < _value){
            revert InsufficientBalance({balance: balances[_address], withdrawAmount: _value});
        }else{
            totalSupply -= _value;
            balances[_address] -= _value;
            emit Burn(_address, _value);
        }
    }


    function transfer (address _reciver, uint _value) public{
        require(balances[msg.sender] >= _value ," Account balance must be greater than transfered value!");
        balances[msg.sender] -= _value;
        balances[_reciver] += _value;
        emit Transfer(msg.sender, _reciver, _value);
    }

    
}
