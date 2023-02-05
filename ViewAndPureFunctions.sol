// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ViewAndPure {
    // declare a state variable
    uint public x = 1;

    // promise not to modify the state (but can read state)
    function addToX(uint y) public view returns (uint) {
        return x + y;
    }

    // promise not to modify or read from state
    function add(uint i, uint j) public pure returns (uint) {
        return i + j;
    }
}
