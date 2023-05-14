// SPDX-License-Identifier: MIT

pragma solidity ^0.8.0;

contract Voting {
    //contructor to intialize candidates
    //vote for candidates
    // get cout of votes for each candidates

    bytes32[] public candidateList;
    mapping (bytes32 => uint8) public votesReceived;
    constructor(bytes32[] memory candidateNames) public {
        candidateList = candidateNames;

    }
    function voteForCandidate(bytes32 candidate) public {
        require(validCandidate(candidate));
        votesReceived[candidate] += 1;
    }
    function totalVotesFor(bytes32 candidate) view public returns(uint8){
        require(validCandidate(candidate));
        return votesReceived[candidate];
    }
    function validCandidate(bytes32 candidate) view public returns (bool) {
        for(uint i = 0; i < candidateList.length; i++) {
            if(candidateList[i] == candidate) {
                return true;
            }
        }
        return false;
    }
}