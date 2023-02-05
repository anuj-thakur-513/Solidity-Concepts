// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.10;

contract Modifiers {
    address public owner;

    constructor() {
        // set the contract deployer as the owner of the contract
        owner = msg.sender;
    }

    // Create a modifier that only allows a function to be called by the owner
    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner");

        // Underscore is a special character used inside modifiers
        // Which tells Solidity to execute the function the modifier is used on
        // at this point
        // Therefore, this modifier will first perform the above check
        // Then run the rest of the code
        _;
    }

    // Create a function and apply the onlyOwner modifier on it
    function changeOwner(address _newOwner) public onlyOwner {
        // We will only reach this point if the modifier succeeds with its checks
        // So the caller of this transaction must be the current owner
        owner = _newOwner;
    }
}
