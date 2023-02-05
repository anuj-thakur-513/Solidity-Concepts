// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract Enum {
    // Enum representing different possible shipping status
    enum Status {
        Pending,
        Shipped,
        Accepted,
        Rejected,
        Cancelled
    }

    // declare a variable of the type status
    // this can only contain one of the predefined values
    Status public status;

    // Since enums are internally represented by uints
    // This function will always return a uint
    // Pending = 0
    // Shipped = 1
    // Accepted = 2
    // Rejected = 3
    // Canceled = 4
    // Value higher than 4 cannot be returned

    function get() public view returns (Status) {
        return status;
    }

    // Pass a uint for input to update the value
    function set(Status _status) public {
        status = _status;
    }

    // Update value to a specific enum members
    function cancel() public {
        status = Status.Cancelled;
    }
}
