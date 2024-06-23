# Token Supply

This Solidity program is a simple demo code for minting and burning token. The purpose of the program is to demonstrate the mechanism of minting , burning and supply of the tokens

## Description
This is a Solidity contract for a custom cryptocurrency token called "BROWN" (abbreviated as "BRO"). It has public variables to store the token's name, abbreviation, and total supply. The contract also includes a mapping to track the balance of each address. It provides two main functions: `mintTokens` to increase the total supply and an address's balance, and `burnTokens` to decrease the total supply and an address's balance, with a conditional check to prevent burning more tokens than an address holds.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., MyToken.sol). Copy and paste the following code into the file:

```javascript
//SPDX-License-Identifier:MIT
pragma solidity 0.8.26;

/*
       REQUIREMENTS
    1. Your contract will have public variables that store the details about your coin (Token Name, Token Abbrv., Total Supply)
    2. Your contract will have a mapping of addresses to balances (address => uint)
    3. You will have a mint function that takes two parameters: an address and a value. 
       The function then increases the total supply by that number and increases the balance 
       of the “sender” address by that amount
    4. Your contract will have a burn function, which works the opposite of the mint function, as it will destroy tokens. 
       It will take an address and value just like the mint functions. It will then deduct the value from the total supply 
       and from the balance of the “sender”.
    5. Lastly, your burn function should have conditionals to make sure the balance of "sender" is greater than or equal 
       to the amount that is supposed to be burned.
*/
contract MyToken{     

    // public variables here
    string public tokenName = "DIAMOND";
    string public tokenAbbrv = "DIAM";
    uint public totalSupply = 0;

    // mapping variable here
    mapping(address => uint) public balances;

    // mint function
    function mintTokens(address _addr2,uint _value)public {
        totalSupply += _value;
        balances[_addr2] += _value;
    }

    // burn function
    function burnTokens(address _addr2,uint _value)public{
        if(_value<=balances[_addr2]){
            totalSupply -= _value;
            balances[_addr2] -=_value;
        }
    }
}

```
To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.26" (or another compatible version), and then click on the "Compile MyToken.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "MyToken" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it. Click on the "MyToken" contract in the left-hand sidebar, and then check the token Abbrev, tokenName, total supply by clicking them. By passing address and token value in mintToken and clicking it will call the mintTokens function and same will be with burnTokens.

## Authors

vikash kumar (vikashdbg2004@gmail.com)


## License

This MyToken is licensed under the MIT License 
