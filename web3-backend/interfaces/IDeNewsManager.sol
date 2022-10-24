// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

interface IDeNewsManager {
    function fakeHuntersInfo(address _from)
        external
        view
        returns (bool, int256);

    function depositInfo(address _user) external view returns (uint256);

    function checkHumanVerify(address _user) external view returns (bool);

    function participationInVotingInfo(address _voter, uint256 _ballotID)
        external
        view
        returns (
            uint256,
            uint256,
            bytes32,
            bool
        );

    function changeRatingFakeHunter(address _address, int256 delta) external;

    function dataOfVote(
        address _voter,
        uint256 _ballotID,
        uint256 _lockedAmount,
        uint256 _lockedAmountWithReward,
        bytes32 _voteHash
    ) external;
}
