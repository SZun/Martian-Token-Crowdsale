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

// KaseiCoinCrowdsaleDeployer contract
contract KaseiCoinCrowdsaleDeployer {

    // Instance variables
    address public kasei_token_address;
    address public kasei_crowdsale_address;

    // Constructor that takes in string name memory and string name symbol
    constructor(
       string memory name,
       string memory symbol,
       address payable wallet
    ) public {
        // Create a new instance of the KaseiCoin contract.
        KaseiCoin token = new KaseiCoin(name, symbol, 0);
        // Assign the token contract’s address to the `kasei_token_address` variable.
        kasei_token_address = address(token);

        // Create a new instance of the `KaseiCoinCrowdsale` contract
        KaseiCoinCrowdsale kasei_crowdsale = new KaseiCoinCrowdsale(1, wallet, token);
        // Aassign the `KaseiCoinCrowdsale` contract’s address to the `kasei_crowdsale_address` variable.
        kasei_crowdsale_address = address(kasei_crowdsale);

        // Set the `KaseiCoinCrowdsale` contract as a minter
        token.addMinter(kasei_crowdsale_address);
        // Have the `KaseiCoinCrowdsaleDeployer` renounce its minter role.
        token.renounceMinter();
    }
}