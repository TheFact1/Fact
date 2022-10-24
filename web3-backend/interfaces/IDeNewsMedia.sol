// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

interface IDeNewsMedia {
    function safeMint(
        uint256 _ballotID,
        string memory _cid,
        address _fakeHunter
    ) external;
}
