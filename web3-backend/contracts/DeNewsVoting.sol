// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "@openzeppelin/contracts/access/Ownable.sol";
import "../interfaces/IDeNewsManager.sol";
import "../interfaces/IDeNewsMedia.sol";

contract DeNewsVoting is Ownable {
    IDeNewsManager DeNewsManager;
    IDeNewsMedia DeNewsMedia;

    uint256 public fakeHunterVoteAmount;
    uint256 public fakeHunterReward;
    uint256 public userVoteAmount;
    uint256 public voteTime; // in seconds
    uint256 public revealTime; // in seconds

    int256 public fakeHunterRatingDelta;

    mapping(string => bool) opportunityToVote; // Mapping to check if a vote was taken.
    mapping(uint256 => VotingBallot) public votingArchive;

    struct VotingBallot {
        address accusingFakeHunter;
        string newsMetadata;
        uint256 voteFor;
        uint256 voteAgainst;
        uint256 startTime;
        uint256 endVoteTime;
        uint256 endRevealTime;
        mapping(address => bool) alreadyVoted;
        mapping(address => bytes32) voteHash;
        mapping(address => bool) alreadyReveal;
        bool votingStatus; // voting status, true-open, false-close
    }

    function setDeNewsManagerContract(address _addressDeNewsManager)
        external
        onlyOwner
    {
        DeNewsManager = IDeNewsManager(_addressDeNewsManager);
    }

    function setDeNewsMediaContract(address _addressDeNewsMedia)
        external
        onlyOwner
    {
        DeNewsMedia = IDeNewsMedia(_addressDeNewsMedia);
    }

    function setFakeHunterVoteAmount(uint256 _amount) public onlyOwner {
        fakeHunterVoteAmount = _amount;
    }

    function setFakeHunterReward(uint256 _amount) public onlyOwner {
        fakeHunterReward = _amount;
    }

    function setFakeHunterRatingDelta(int256 _delta) public onlyOwner {
        fakeHunterRatingDelta = _delta;
    }

    function setUserVoteAmount(uint256 _amount) public onlyOwner {
        userVoteAmount = _amount;
    }

    function setVoteTime(uint256 _seconds) public onlyOwner {
        voteTime = _seconds;
    }

    function setRevealTime(uint256 _seconds) public onlyOwner {
        revealTime = _seconds;
    }

    function generateVoteHash(
        uint256 _ballotID,
        uint256 _amount,
        bool _vote,
        string memory password
    ) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_ballotID, _amount, _vote, password));
    }

    function openVoting(
        uint256 _ballotID,
        string memory _cid,
        bytes32 _voteHash
    ) external {
        (bool _fakeHunterAccreditation, ) = DeNewsManager.fakeHuntersInfo(
            msg.sender
        );
        uint256 _fakeHunterBalance = DeNewsManager.depositInfo(msg.sender);
        require(
            DeNewsManager.checkHumanVerify(msg.sender) == true,
            "You are no verified human!"
        );
        require(
            _fakeHunterAccreditation == true,
            "You are not an accredited fake hunter!"
        );
        require(
            _fakeHunterBalance >= fakeHunterVoteAmount,
            "You don't have enough funds to open voting!"
        );
        require(
            opportunityToVote[_cid] == false,
            "DeNewsVoting is in progress or already finished!"
        );
        opportunityToVote[_cid] = true;
        VotingBallot storage newVotingBallot = votingArchive[_ballotID];
        newVotingBallot.accusingFakeHunter = msg.sender;
        newVotingBallot.newsMetadata = string.concat("ipfs://", _cid);
        newVotingBallot.voteFor = fakeHunterVoteAmount / 10**19;
        newVotingBallot.voteAgainst = 0;
        newVotingBallot.startTime = block.timestamp;
        newVotingBallot.endVoteTime = block.timestamp + voteTime;
        newVotingBallot.endRevealTime = block.timestamp + revealTime;
        newVotingBallot.alreadyVoted[msg.sender] = true;
        newVotingBallot.voteHash[msg.sender] = _voteHash;
        newVotingBallot.alreadyReveal[msg.sender] = true;
        newVotingBallot.votingStatus = true;
        uint256 _amount = fakeHunterVoteAmount;
        uint256 _reward = fakeHunterVoteAmount + fakeHunterReward;
        DeNewsManager.dataOfVote(
            msg.sender,
            _ballotID,
            _amount,
            _reward,
            _voteHash
        );
        DeNewsMedia.safeMint(_ballotID, _cid, msg.sender);
    }

    function vote(
        uint256 _ballotID,
        uint256 _amount,
        bytes32 _voteHash
    ) external {
        uint256 _voterBalance = DeNewsManager.depositInfo(msg.sender);
        require(
            DeNewsManager.checkHumanVerify(msg.sender) == true,
            "You are no verified human!"
        );
        require(_amount >= userVoteAmount, "Need more tokens!");
        require(
            _amount <= _voterBalance,
            "You don't have enough money to vote!"
        );
        require(
            votingArchive[_ballotID].votingStatus == true,
            "DeNewsVoting is closed!"
        );
        require(
            votingArchive[_ballotID].alreadyVoted[msg.sender] == false,
            "You have already voted!"
        );
        require(
            votingArchive[_ballotID].endVoteTime > block.timestamp,
            "Time to vote is up!"
        );
        votingArchive[_ballotID].voteHash[msg.sender] = _voteHash;
        votingArchive[_ballotID].alreadyVoted[msg.sender] = true;
        uint256 _reward = _amount + (_amount * 5) / 100;
        DeNewsManager.dataOfVote(
            msg.sender,
            _ballotID,
            _amount,
            _reward,
            _voteHash
        );
    }

    function revealVote(
        uint256 _ballotID,
        bool _vote,
        string memory password
    ) public {
        require(
            votingArchive[_ballotID].endVoteTime <= block.timestamp,
            "Voting time is not over yet!"
        );
        require(
            votingArchive[_ballotID].endRevealTime > block.timestamp,
            "Time to reveal is up!"
        );
        require(
            votingArchive[_ballotID].alreadyReveal[msg.sender] == false,
            "You have already reveal!"
        );
        (uint256 _amount, , , ) = DeNewsManager.participationInVotingInfo(
            msg.sender,
            _ballotID
        );
        require(
            votingArchive[_ballotID].voteHash[msg.sender] ==
                generateVoteHash(_ballotID, _amount, _vote, password),
            "The entered data does not match!"
        );
        votingArchive[_ballotID].alreadyReveal[msg.sender] = true;
        uint256 _voteWeight = _amount / 10**19;
        if (_vote == true) {
            votingArchive[_ballotID].voteFor += _voteWeight;
        } else {
            votingArchive[_ballotID].voteAgainst += _voteWeight;
        }
    }

    function endOfVoting(uint256 _ballotID) public onlyOwner {
        require(
            votingArchive[_ballotID].endVoteTime <= block.timestamp,
            "Voting time is not over yet!"
        );
        require(
            votingArchive[_ballotID].endRevealTime <= block.timestamp,
            "Reveal time is not over yet!"
        );
        votingArchive[_ballotID].votingStatus = false;
        address _fakeHunter = votingArchive[_ballotID].accusingFakeHunter;
        if (
            votingArchive[_ballotID].voteFor >
            votingArchive[_ballotID].voteAgainst
        ) {
            DeNewsManager.changeRatingFakeHunter(
                _fakeHunter,
                fakeHunterRatingDelta
            );
        } else if (
            votingArchive[_ballotID].voteFor <=
            votingArchive[_ballotID].voteAgainst
        ) {
            DeNewsManager.changeRatingFakeHunter(
                _fakeHunter,
                -fakeHunterRatingDelta
            );
        }
    }

    function votingArchiveInfo(uint256 _ballotID)
        public
        view
        returns (
            address,
            uint256,
            uint256,
            uint256,
            uint256,
            bool
        )
    {
        return (
            votingArchive[_ballotID].accusingFakeHunter,
            votingArchive[_ballotID].voteFor,
            votingArchive[_ballotID].voteAgainst,
            votingArchive[_ballotID].endVoteTime,
            votingArchive[_ballotID].endRevealTime,
            votingArchive[_ballotID].votingStatus
        );
    }
}
