# Variable Inspector

A mock project containing different contracts to analyze how the storage slot works under the hood in the EVM.

## Goals of the Project

1. **Highlight Storage Packing:** Emphasize the concept of storage packing in Solidity, showcasing how multiple variables can be efficiently stored within a single storage slot.

2. **Retrieve Private Variables:** Demonstrate the use of `ethers.js` to retrieve private variables. Although private variables are not directly accessible from other contracts, they remain visible and retrievable due to the public nature of blockchain data.

## Technicalities of the Project

- **Usage of ethers.js:** `ethers.js` is utilized to facilitate the retrieval and analysis of private variables, highlighting their visibility despite being marked as private.

- **Contract and Function Documentation:** The contract's functions and overall functionality have been documented using the `nastepc` documentation. Later actual documentation files can be generated from it using a hardhat plugin.

**Note:** This project serves an educational purpose, aiming to explore storage optimization and variable visibility within smart contracts. It is not intended for production deployment.

## Installation

### Cloning the Repository

You can clone the repository and install its dependencies to start using the provided smart contracts.

```bash
$ git clone https://github.com/0xAdnanH/inspect-private-variables.git
$ cd ./inspect-private-variables
$ npm install
```

### Instructions

#### Compile

To Compile the contract run:

```bash
$ npx hardhat compile
```

#### Tests

To run the unit tests:

```bash
$ npx hardhat test
```
