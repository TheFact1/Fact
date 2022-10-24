// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

interface IDeNewsVoting {
    function votingArchiveInfo(uint256 _ballotID)
        external
        view
        returns (
            address,
            uint256,
            uint256,
            uint256,
            uint256,
            bool
        );

    function generateVoteHash(
        uint256 _ballotID,
        uint256 _amount,
        bool _vote,
        string memory password
    ) external pure returns (bytes32);
}
