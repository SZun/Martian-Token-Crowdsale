// Solidity compiler version
pragma solidity ^0.5.0;

//  Import the following contracts from the OpenZeppelin library:
//    * `ERC20`
//    * `ERC20Detailed`
//    * `ERC20Mintable`
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Detailed.sol";
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/release-v2.5.0/contracts/token/ERC20/ERC20Mintable.sol";

// KaseiCoin contract, which inhertis from ERC20, ERC20Detailed and ERC20Mintabl
contract KaseiCoin is ERC20, ERC20Detailed, ERC20Mintable {

    // Constructor that takes in string name memory, string name symbol, uint initial_suppply and passes the name and symbol on to the ERC20Detailed constructor
    // as well as a 18 which is the value for the decimals parameter in the ERC20Detailed constructor
    constructor(
        string memory name,
        string memory symbol,
        uint initial_supply
    ) ERC20Detailed(name, symbol, 18) public {}

}