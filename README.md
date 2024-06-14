# SolidityMetacrafters

  This Solidity program is a demonstration project on how to use Solidity by making a program that creates a sample token with minting and burning functionality. It serves as a starting program for the basics of Solidity such as variable declaration, mapping, functions, and conditionals.

# Description
  The program is written in the Solidity language which is a programming language for developing smart contracts.   It contain two functions, MintToken and BurnToken which adds or subtracts values of the supply in the mapped address.

# Getting Started

## Executing Program
  This is mainly executed through the Remix IDE, a browser-based Solidity IDE [https://remix.ethereum.org/](https://remix.ethereum.org/).

  Once in the Remix website and after initialization. Create a new file with the .sol extension (e.g. Test.sol) and save the file. Afterwards paste the following code into the file:
```
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
  ```

To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile Test.sol" button.  

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "Test" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the variables such as tokenName, tokenAbbr, and totalSupply to check if they have their values. Two functions MintToken and BurnToken function identically, drop down function parameters using the downward arrow button on the right of the function.    
Select any sample account by copying its address and typing in an integer value, clicking transact will run the function and add or subtract a value within the total supply. The BurnToken function will still run if you input a value bigger than the totalSupply, however, it will result to no changes.
