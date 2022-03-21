//SPDX-License-Identifier: MIT

pragma solidity ^0.8.11;

contract Coin {
    //This is the simplest contract which implements the simplest form of cryptocurrency
    //1. It allows only the owner of the contract to create new coins
    //2. Anybody can send the coin from their account o other without logging in
    

    address public owner;

    mapping(address => uint) public balances;

    event Sent(address from, address to, uint amount);


    //Contructor code is only run when the contract is created

    construtor() {
        owner = msg.sender;
    }

    //Sends an amount of newly created coins to the address of the receiver
    //only the contract owner can call this functon and create new coins
    function mint(address _receiver, uint _amount) public {
        require(msg.sender == owner, "The coins can only be created by the owner of the contract");
        balances[_receiver] += _amount;
    } 

    //errors help us to identiy why an operation failed.
    //It returns the information to the caller of the function
    error InsufficientBalance(uint required, uint available);


    //Send funtion allows anybody to send the coins to  other address without logging in
    function send(address _to, uint _amount) public {
        if(balances[msg.sender] < _amount){
            revert({
                required: _amount,
                available: balances[msg.sender]
            });
        }

        balances[msg.sender] -= _amount;
        balances[_to] += _amount;
        emit Sent(msg.sender, _to, _amount)
    }

}