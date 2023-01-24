// Solidity compiler version
pragma solidity ^0.5.0;

//  Import the KaseiCoint contract following contracts from the OpenZeppelin library:
//    * `Crowdsale`
//    * `MintedCrowdsale`
import "./KaseiCoin.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/Crowdsale.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/crowdsale/emission/MintedCrowdsale.sol";

// KaseiCoinCrowdsale contract, which inhertis from Crowdsale and MintedCrowdsale
contract KaseiCoinCrowdsale is Crowdsale, MintedCrowdsale {
    
    // Constructor that takes in uint rate, address payable wallet, KaseiCoin token and passes them on to the Crowdsale constructor
    constructor(
        uint rate, 
        address payable wallet, 
        KaseiCoin token
    ) public Crowdsale(rate, wallet, token) {}

}