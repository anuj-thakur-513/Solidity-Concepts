// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

// mapping in solidity acts like hashmap
contract Mapping {
    // mapping from address to uint
    mapping(address => uint) public myMap;

    function get(address _addr) public view returns (uint) {
        return myMap[_addr];
    }

    function set(address _addr, uint _i) public {
        myMap[_addr] = _i;
    }

    function remove(address _addr) public {
        delete myMap[_addr];
    }
}

// nested mapping i.e. a key pointing to another map
contract NestedMappings {
    // Mapping from address => (mapping from uint to bool)
    mapping(address => mapping(uint => bool)) public nestedMap;

    function get(address _addr1, uint _i) public view returns (bool) {
        // You can get values from a nested mapping
        // even when it is not initialized
        // The default value for a bool type is false
        return nestedMap[_addr1][_i];
    }

    function set(address _addr1, uint _i, bool _boo) public {
        nestedMap[_addr1][_i] = _boo;
    }

    function remove(address _addr1, uint _i) public {
        delete nestedMap[_addr1][_i];
    }
}
