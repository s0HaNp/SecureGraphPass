# SecureGraphPass
# Image Authentication Smart Contract

## Overview

The Image Authentication Smart Contract is a Solidity-based Ethereum smart contract designed to facilitate image authentication using user-defined patterns. Users can set their unique image patterns, and the contract allows verification of whether the provided pattern matches the predefined original pattern set by the contract owner.

## Smart Contract Details

### Contract Address

The deployed contract can be found at [Contract Address on the Blockchain].

### Contract Owner

The contract owner is the Ethereum address that deployed the contract. The owner has special privileges, including the ability to set the original pattern.

### Original Pattern

The original pattern is a sequence of integers representing the reference pattern against which user-defined patterns are verified. The default original pattern is set to [1, 2, 3, 4, 5].

### Functions

#### `setUserPattern(uint[] memory pattern)`

This function allows users to set their own image pattern. The provided pattern must match both the length and values of the original pattern for successful validation.

#### `verifyPattern()`

Verifies whether the user's set pattern matches the original pattern. Returns a boolean indicating the result of the verification.

## Getting Started

1. **Deploy the Smart Contract:** Deploy the smart contract to the Ethereum blockchain.

2. **Set the Original Pattern:** The contract owner should set the original pattern by calling the constructor with the desired values.

3. **User Interaction:**
   - Users can call the `setUserPattern` function to set their image pattern.
   - Use the `verifyPattern` function to check if a user's pattern matches the original pattern.

## Usage Example

```solidity
// Deploy the contract
ImageAuthentication imageAuth = new ImageAuthentication();

// Set the original pattern (only owner can perform this)
imageAuth.setOriginalPattern([1, 2, 3, 4, 5]);

// User sets their own pattern
imageAuth.setUserPattern([1, 2, 3, 4, 5]);

// Verify user's pattern
bool isPatternValid = imageAuth.verifyPattern();

```
### Security Considerations
1. Owner Privileges: Only the contract owner should have the privilege to set the original pattern to prevent unauthorized changes.
   
2. User Caution: Users should exercise caution when setting their image patterns, ensuring they match the predefined original pattern.

### Team Members:
1. Sohan Kumar Potti
2. Gajula Amulya
3. Bevara Praveen
4. Bakki Srishith Patel

### License
This smart contract is licensed under the MIT License. See the LICENSE file for details.
