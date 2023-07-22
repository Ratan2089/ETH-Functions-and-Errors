
# MyToken Contract

This is a simple Solidity smart contract for a cryptocurrency token called "MyToken" (symbol: TRY).

## Overview

The MyToken contract is a basic implementation of a cryptocurrency token on the Ethereum blockchain. It allows users to perform various operations, such as minting new tokens, burning existing tokens, and transferring tokens between addresses.

### Contract Details

- **Name:** MyToken
- **Symbol:** TRY
- **Total Supply:** 0 (initially)

## Functionalities

1. **Constructor**: The contract's constructor is executed when the contract is deployed. It sets the deployer's address as the owner of the contract.

2. **Minting**: The contract owner can create and issue new tokens to a specified address. This is done through the `mint` function, which increases the total supply of tokens and updates the balance of the recipient address.

3. **Burning**: The contract owner can destroy (burn) existing tokens from a specific address. This is achieved using the `burn` function, which decreases the total supply of tokens and updates the balance of the address to be burned.

4. **Transfer**: Regular users can transfer tokens to other addresses. The `transfer` function enables users to send tokens from their own address to another address, provided they have a sufficient balance.

## Events

The contract emits three events to notify external applications or other contracts about certain actions:

1. `Mint`: Emitted when new tokens are created and assigned to a specific address.

2. `Burn`: Emitted when existing tokens are destroyed (burned) from a specific address.

3. `Transfer`: Emitted when tokens are transferred from one address to another.

## Errors

The contract defines a custom error called `InsufficientBalance`, which is used to indicate if an account has insufficient tokens to perform a specific operation. For example, if an address tries to burn more tokens than it currently holds, the `InsufficientBalance` error will be triggered.

## Access Control

The contract owner, who is the address that deployed the contract, has special privileges to mint new tokens and burn existing ones. The `onlyOwner` modifier (commented out in the code) can be used to restrict certain functions to the contract owner.

## License

This contract is licensed under the MIT License, allowing anyone to use, modify, and distribute the code.

## Disclaimer

This contract is provided as a simple example and for educational purposes only. It is not audited for security and should not be used in a production environment without proper security reviews and testing.


