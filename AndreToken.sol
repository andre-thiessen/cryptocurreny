// SPDX-License-Identifier: GPL-3.0

//What version of solidity
pragma solidity ^0.8.0;

//import ERC20 contract from OpenZeppelin
import "https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/ERC20.sol";

// Extends AndreToken from ERC20
contract AndreToken is ERC20 {

    //To run the constructot presents in ERC20
    constructor (string memory _name, string memory _symbol) ERC20(_name, _symbol) {

        //mint some tokens for ourselves
        //msg.sender: person who is deploying the contract
        _mint(msg.sender, 21 * (10 ** 18));
        
    }

}