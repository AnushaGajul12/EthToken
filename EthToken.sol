// SPDX-License-Identifier: MIT
pragma solidity 0.8.18;

contract AgToken {
    string public tokenName = "AG Token";
    string public tokenAbbrv = "AGT";
    uint public totalSupply = 0;

    // mapping variable to track balances of address
    mapping(address => uint) public balances;

    //function to mint tokens
    function mint(address _address, uint _value) public {
        totalSupply += _value;
        balances[_address] += _value;
    }

    //function to burn tokens
    function burn(address _address, uint _value) public {
        if (balances[_address] >= _value) {
            totalSupply -= _value;
            balances[_address] -= _value;
        }
    }
}
    
