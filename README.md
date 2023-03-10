# Martian Token Crowdsale

![Mars](./assets/images/mars.png)

## Background

After waiting for years and passing several tests, the Martian Aerospace Agency selected you to become part of the first human colony on Mars. As a prominent fintech professional, they chose you to lead a project developing a monetary system for the new Mars colony. You decided to base this new system on blockchain technology and to define a new cryptocurrency named **KaseiCoin**. (Kasei means Mars in Japanese.)

KaseiCoin will be a fungible token that’s ERC-20 compliant. You’ll launch a crowdsale that will allow people who are moving to Mars to convert their earthling money to KaseiCoin.

## Evaluation Evidence

### Contract Compilation

#### KaseiCoin Token Contract Compilation
![KaseiCoin Token Contract Compiled](./assets/images/kasecoin_compiled.png)

#### KaseiCoinCrowdsale Contract Compilation
![KaseiCoinCrowdsale Contract Compiled](./assets/images/kasecoincrowdsale_compiled.png)

#### KaseiCoinCrowdsaleDeployer Contract Compilation
![KaseiCoinCrowdsaleDeployer Contract Compiled](./assets/images/kasecoincrowdsaledeployer_compiled.png)

### Local Blockchain

#### Ganache Credentials
![Ganache Credentials](./assets/images/ganache_credentials.png)

#### Ganache/Meta Mask Network Setup
![Ganache/Metamask Credentials](./assets/images/ganache_metamask_network.png)

#### Meta Mask Connected to Ganache Network
![Ganache/Metamask Connected](./assets/images/ganache_metamask_connected.png)
![Ganache/Metamask Connected](./assets/images/ganache_metamask_connected_2.png)

#### Switching to the Meta Mask Injected Provider in the Remix IDE
![Injected Provider](./assets/images/injected_provider.png)

#### Remix IDE connected to Meta Mask and Local Ganache Network
![Injected Provider Connected](./assets/images/connected.png)

### Deployment

#### Confirming deployment transaction with MetaMask
![Deployment Confirmation](./assets/images/deployment_confirmation.png)

#### Deployed intance in Remix IDE
![Deployed Instance](./assets/images/deployed_instance.png)

### Buying Token

#### Buying a KaseiCoin token
![Buying Token](./assets/images/buying.png)

#### Address Balance after buying KasieCoin token
![Address Balance](./assets/images/balance_2.png)
![Address Balance](./assets/images/balance_1.png)


### Supply & Funds Raised

#### Supply of KaseiCoin Tokens
![Token Suppy](./assets/images/supply.png)

#### Amount of Wei Raised by Crowdsale Contract
![Wei Raised](./assets/images/wei_raised.png)

## Getting Started

1. Open the Remix IDE here: [Remix IDE](https://remix.ethereum.org/)
2. Copy and paste the code from [KaseiCoin.sol](https://github.com/SZun/Martian-Token-Crowdsale/blob/main/contracts/KaseiCoin.sol), [KaseiCoinCrowdsale.sol](https://github.com/SZun/Martian-Token-Crowdsale/blob/main/contracts/KaseiCoinCrowdsale.sol), [KaseiCoinCrowdsaleDeployer.sol](https://github.com/SZun/Martian-Token-Crowdsale/blob/main/contracts/KaseCoinCrowdsaleDeployer.sol) into files in the Remix IDE.
3. Compile the contracts.
4. Deploy the `KaseCoinCrowdsaleDeployer` contract.
5. Use the addresses returned from the deployed `KaseCoinCrowdsaleDeployer` contract instance to deploy instances of the `KaseCoin` and `KaseCoinCrowdsale` contracts. 

## Clone Repository
```
$ git clone git@github.com:SZun/Martian-Token-Crowdsale.git
$ cd Martian-Token-Crowdsale
```

## Built With
[![Solidity ^0.5.0](https://img.shields.io/badge/Solidity-e6e6e6?style=for-the-badge&logo=solidity&logoColor=black)]([https://docs.soliditylang.org/en/latest/) *Programming Language* <br>
[![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-4E5EE4?logo=OpenZeppelin&logoColor=fff&style=for-the-badge)]([https://docs.soliditylang.org/en/latest/) *Open-Source Solidity Contract Standards*


## Contributors
- **Sam G. Zun** - [LinkedIn](https://www.linkedin.com/in/szun/) | [GitHub](https://github.com/SZun)
