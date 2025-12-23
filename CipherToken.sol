// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

contract CipherToken {
    error InsufficientBalance(uint256 requested, uint256 available);
    error InvalidRecipient();

    event Transfer(address indexed from, address indexed to, uint256 value);


    string public constant name = "CipherToken";
    string public constant symbol = "CPT";
    uint8 public constant decimals = 18;
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    constructor(uint256 initialSupply) {
        totalSupply = initialSupply;
        balanceOf[msg.sender] = initialSupply;
        emit Transfer(address(0), msg.sender, initialSupply);
    }

    function transfer(address toWho, uint256 value) public returns (bool success) {
        if (toWho == address(0)) revert InvalidRecipient();

        uint256 bal = balanceOf[msg.sender];
        if (value > bal) revert InsufficientBalance(value, bal);

        unchecked {
            balanceOf[msg.sender] = bal - value;
            balanceOf[toWho] += value;
        }

        emit Transfer(msg.sender, toWho, value);
        return true;
    }
}