// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract errorHandling_vottingSystem {
    mapping(string => bool) public hasVoted;
    mapping(string => uint) public voteCount;

    function vote(string memory candidate, uint _age) external {
        ageVerify(_age);

        require(!hasVoted[candidate], "You have already voted");

        voteCount[candidate] += 1;
        hasVoted[candidate] = true;

        assert(voteCount[candidate] > 0);
    }

    function ageVerify(uint _age) public pure {
        if (_age < 18) {
            revert("Not Eligible to Vote");
        }
    }
}

contract VotingExample {
    error InsufficientAge();

    error AlreadyVoted();

    function simulateVoting() external {
        errorHandling_vottingSystem votingSystem = new errorHandling_vottingSystem();

        try votingSystem.vote("Candidate1", 25) {
            // Successful vote
        } catch Error(string memory errorMessage) {
            revert(errorMessage);
        }

        try votingSystem.vote("Candidate2", 16) {
            revert InsufficientAge();
        } catch Error(string memory errorMessage) {
            revert(errorMessage);
        }

        try votingSystem.vote("Candidate1", 30) {
            revert AlreadyVoted();
        } catch Error(string memory errorMessage) {
            revert(errorMessage);
        }
    }
}

