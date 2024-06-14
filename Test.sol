// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;


contract MyToken {

    // public variables here
    string public tokenName = "Big Operational Indicator";
    string public tokenAbbrv = "BOI";
    uint public totalSupply = 0; //initial supply

    // mapping variable here
    mapping (address => uint) public balance;

    // mint function
    function MintToken (address _address, uint _value) public  {
        totalSupply += _value;
        balance[_address] += _value;
    } 
    // burn function
    function BurnToken (address _address, uint _value) public {
        if (balance[_address] >= _value){
            totalSupply -= _value;
        balance[_address] -= _value;
        }
    }
}
