// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract CipherToken {
    string public name = "CipherToken";
    string public symbol = "CPT";
    uint256 public totalSupply;
    mapping(address => uint256) public balanceOf;

    constructor(uint256 initialSupply) {
        totalSupply = initialSupply;
        balanceOf[msg.sender] = initialSupply;
    }

    function transfer(address toWho, uint256 value) public returns (bool success) {
        require(balanceOf[msg.sender] >= value, "Insufficient tokens, soz");
        balanceOf[msg.sender] -= value;
        balanceOf[toWho] += value;
        return true;
    }
}