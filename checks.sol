/ SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Checks {
    uint public limit = 10 ether;

    function getBalance(address _address) public view returns (uint256) {
        return _address.balance;
    }

    error singleTransferLimit(string message, uint limit);

    function transfer(address payable _receiver) public payable {
        assert(limit == 10 ether);
        
        require(msg.value >= 1 ether, "Atlest 1 ether should be sent");
        
        _receiver.transfer(msg.value);

        if (msg.value > limit) {
            revert singleTransferLimit("Single Transfer Limit Exceeded!", limit);
        }
    }

}
