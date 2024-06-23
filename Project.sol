//SPDX-License-Identifier:MIT
pragma solidity 0.8.26;

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
