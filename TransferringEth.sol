// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract SendEther {
    function sendEth(address payable _to) public payable {
        // Just forward the ETH received in this payable function
        // to the given address
        uint amountToSend = msg.value;

        // call returns a bool value specifying success or failure
        (bool success, bytes memory data) = _to.call{value: amountToSend}("");
        require(success == true, "Failed to send ETH");
    }
}

contract ReceiveEther {
    // function to receiver ether. msg.data must be empty
    receive() external payable {}

    // fallback function is called when msg.data is not empty
    fallback() external payable {}

    function getBalance() public view returns (uint) {
        return address(this).balance;
    }
}
