// SPDX-License-Identifier: MIT
pragma solidity ^0.8.10;

contract ErrorHandlingVotingSystem {
    mapping(string => bool) public hasVoted;
    mapping(string => uint) public voteCount;

    function vote(string memory candidate, uint _age) external {
        require(_age >= 18, "Not eligible to vote");
        require(!hasVoted[candidate], "You have already voted");

        voteCount[candidate] += 1;
        hasVoted[candidate] = true;

        assert(voteCount[candidate] > 0);
    }
}

contract VotingExample {
    function simulateVoting() external {
        ErrorHandlingVotingSystem votingSystem = new ErrorHandlingVotingSystem();

        try votingSystem.vote("Candidate1", 25) {
            // Successful vote
        } catch Error(string memory errorMessage) {
            revert(errorMessage);
        }

        try votingSystem.vote("Candidate2", 16) {
            // This will revert with the error message "Not eligible to vote"
        } catch Error(string memory errorMessage) {
            revert(errorMessage);
        }

        try votingSystem.vote("Candidate1", 30) {
            // This will revert with the error message "You have already voted"
        } catch Error(string memory errorMessage) {
            revert(errorMessage);
        }
    }
}
