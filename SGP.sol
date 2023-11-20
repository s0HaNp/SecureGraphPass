// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract ImageAuthentication {
    address public owner;
    uint[] public originalPattern;
    mapping(address => uint[]) public userPatterns;

    constructor() {
        owner = msg.sender;
        // Set the original pattern (e.g., [1, 2, 3, 4, 5] for dairy milk, 5 stars, KitKat, etc.)
        originalPattern = [1, 2, 3, 4, 5];
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can perform this action");
        _;
    }

    function setUserPattern(uint[] memory pattern) public {
        require(pattern.length == originalPattern.length, "Pattern length must match the original pattern length");

        // Verify that the user's pattern matches the original pattern
        for (uint i = 0; i < pattern.length; i++) {
            require(pattern[i] == originalPattern[i], "Pattern does not match the original pattern");
        }

        userPatterns[msg.sender] = pattern;
    }

    function verifyPattern() public view returns (bool) {
        uint[] memory userPattern = userPatterns[msg.sender];

        if (userPattern.length != originalPattern.length) {
            return false;
        }

        // Verify that the user's pattern matches the original pattern
        for (uint i = 0; i < userPattern.length; i++) {
            if (userPattern[i] != originalPattern[i]) {
                return false;
            }
        }

        return true;
    }
}
