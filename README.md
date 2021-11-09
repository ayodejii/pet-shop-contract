# truffle-pet-shop-contract

## Overview
This is a solidity contract based on eth blockchain, used to manage a pet store. It was originally set up by [Truffle](https://trufflesuite.com/) as a guide to using their framework to develop, deploy and test smart contracts and dapps generally.

## How to build
To build and test this smart contract, you need to have these apps installed:
- NodeJS
- Ganache by truffle
- Git

Open your terminal and run `npm install -g truffle`. This command installs truffle globally.

Then open Ganache and start - this is a mock eth blockchain we can use to test our dapp.

Go back to your terminal and run `truffle compile`. 

You should get an output that ends with something like this

```
> Compiled successfully using:
   - solc: 0.5.0+commit.1d4f565a.Emscripten.clang
```
Then, run `truffle migrate`, which does the actual contract migration to the blockchain and charge gas.

You will notice this on Ganache. Some eth would be deducted from the balance of the first address. 🚀
