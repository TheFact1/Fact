// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "@openzeppelin/contracts/access/Ownable.sol";
import "@openzeppelin/contracts/token/ERC721/IERC721Receiver.sol";
import {ByteHasher} from "../libraries/ByteHasher.sol";
import {IWorldID} from "../interfaces/IWorldID.sol";
import "../interfaces/IDeNewsToken.sol";
import "../interfaces/IDeNewsVoting.sol";

contract DeNewsManager is Ownable, IERC721Receiver {
    IDeNewsToken DeNewsToken;
    IDeNewsVoting DeNewsVoting;
    IWorldID worldId;

    using ByteHasher for bytes;

    uint256 public fakeHuntersDeposit;
    uint256 internal constant groupId = 1;

    address public addressDeNewsMediaContract;

    struct fakeHunterProfile {
        bool fakeHunterAccreditation;
        int256 fakeHunterRating;
    }

    struct votingCard {
        uint256 lockedAmount;
        uint256 lockedAmountWithReward;
        bytes32 voteHash;
        bool pending;
    }

    mapping(address => uint256) private depositBalance;
    mapping(address => mapping(uint256 => votingCard))
        private participationInVoting;
    mapping(address => fakeHunterProfile) private fakeHuntersArchive;
    mapping(uint256 => bool) private nullifierHashes;
    mapping(address => bool) private humanVerification;

    function setDeNewsMediaContract(address _addressMediaContract)
        external
        onlyOwner
    {
        addressDeNewsMediaContract = _addressMediaContract;
    }

    function setDeNewsVotingContract(address _addressDeNewsVotingContract)
        external
        onlyOwner
    {
        DeNewsVoting = IDeNewsVoting(_addressDeNewsVotingContract);
    }

    function setDeNewsTokenContract(address _DeNT) external onlyOwner {
        DeNewsToken = IDeNewsToken(_DeNT);
    }

    function setWorldIdContract(address _addressWorldId) external onlyOwner {
        worldId = IWorldID(_addressWorldId);
    }

    function setFakeHunterDeposit(uint256 _amount) public onlyOwner {
        fakeHuntersDeposit = _amount;
    }

    function humanVerify(
        uint256 root,
        uint256 nullifierHash,
        uint256[8] calldata proof
    ) public payable {
        require(
            humanVerification[msg.sender] == false,
            "You already verified!"
        );
        require(
            nullifierHashes[nullifierHash] == false,
            "Nullifier Hash already used!"
        );
        worldId.verifyProof(
            root,
            groupId,
            abi.encodePacked(msg.sender).hashToField(),
            nullifierHash,
            abi.encodePacked(address(this)).hashToField(),
            proof
        );
        nullifierHashes[nullifierHash] = true;
        humanVerification[msg.sender] = true;
    }

    function checkHumanVerify(address _user) public view returns (bool) {
        return humanVerification[_user];
    }

    function fakeHuntersRegistration(uint256 _amount) public {
        require(_amount >= fakeHuntersDeposit, "You don't have enough tokens!");
        require(
            fakeHuntersArchive[msg.sender].fakeHunterRating == 0,
            "You are already registred!"
        );
        deposit(_amount);
        fakeHunterProfile storage newFakeHunter = fakeHuntersArchive[
            msg.sender
        ];
        newFakeHunter.fakeHunterAccreditation = true;
        newFakeHunter.fakeHunterRating = 100;
    }

    function fakeHuntersInfo(address _from)
        external
        view
        returns (bool, int256)
    {
        return (
            fakeHuntersArchive[_from].fakeHunterAccreditation,
            fakeHuntersArchive[_from].fakeHunterRating
        );
    }

    function changeRatingFakeHunter(address _address, int256 delta) external {
        require(msg.sender == address(DeNewsVoting), "Only contract!");
        fakeHuntersArchive[_address].fakeHunterRating += delta;
    }

    function blockFakeHunter(address _fakeHunter) public onlyOwner {
        fakeHuntersArchive[_fakeHunter].fakeHunterAccreditation = false;
    }

    function dataOfVote(
        address _voter,
        uint256 _ballotID,
        uint256 _lockedAmount,
        uint256 _lockedAmountWithReward,
        bytes32 _voteHash
    ) public {
        require(msg.sender == address(DeNewsVoting), "You don't have access!");
        depositBalance[_voter] -= _lockedAmount;
        votingCard storage newVotingCard = participationInVoting[_voter][
            _ballotID
        ];
        newVotingCard.lockedAmount = _lockedAmount;
        newVotingCard.lockedAmountWithReward = _lockedAmountWithReward;
        newVotingCard.voteHash = _voteHash;
        newVotingCard.pending = false;
    }

    function participationInVotingInfo(address _voter, uint256 _ballotID)
        public
        view
        returns (
            uint256,
            uint256,
            bytes32,
            bool
        )
    {
        return (
            participationInVoting[_voter][_ballotID].lockedAmount,
            participationInVoting[_voter][_ballotID].lockedAmountWithReward,
            participationInVoting[_voter][_ballotID].voteHash,
            participationInVoting[_voter][_ballotID].pending
        );
    }

    function deposit(uint256 _amount) public {
        // approve contract
        DeNewsToken.transferFrom(msg.sender, address(this), _amount);
        depositBalance[msg.sender] += _amount;
    }

    function depositInfo(address _user) public view returns (uint256) {
        return depositBalance[_user];
    }

    function withdrawRewards(
        uint256 _ballotID,
        string memory password,
        bool _vote
    ) public {
        (
            ,
            uint256 _voteFor,
            uint256 _voteAgainst,
            ,
            ,
            bool _votingStatus
        ) = DeNewsVoting.votingArchiveInfo(_ballotID);
        require(
            _votingStatus == false,
            "You can view the information only after the end of the voting!"
        );
        require(
            participationInVoting[msg.sender][_ballotID].pending == false,
            "The reward has already been paid!"
        );
        require(
            participationInVoting[msg.sender][_ballotID].voteHash ==
                DeNewsVoting.generateVoteHash(
                    _ballotID,
                    participationInVoting[msg.sender][_ballotID].lockedAmount,
                    _vote,
                    password
                ),
            "The entered data does not match!"
        );
        participationInVoting[msg.sender][_ballotID].pending = true;
        if (_voteFor > _voteAgainst) {
            if (_vote == true) {
                depositBalance[msg.sender] += participationInVoting[msg.sender][
                    _ballotID
                ].lockedAmountWithReward;
            } else {
                depositBalance[msg.sender] += participationInVoting[msg.sender][
                    _ballotID
                ].lockedAmount;
            }
        } else {
            if (_vote == true) {
                depositBalance[msg.sender] += participationInVoting[msg.sender][
                    _ballotID
                ].lockedAmount;
            } else {
                depositBalance[msg.sender] += participationInVoting[msg.sender][
                    _ballotID
                ].lockedAmountWithReward;
            }
        }
        participationInVoting[msg.sender][_ballotID].lockedAmount = 0;
        participationInVoting[msg.sender][_ballotID].lockedAmountWithReward = 0;
        participationInVoting[msg.sender][_ballotID].pending = true;
    }

    function withdraw(uint256 _amount) external {
        require(
            depositBalance[msg.sender] >= _amount,
            "You can't withdraw the specified amount!"
        );
        uint256 _contractBalance = DeNewsToken.balanceOf(address(this));
        if (_amount > _contractBalance) {
            DeNewsToken.mint(address(this), _amount - _contractBalance);
        }
        depositBalance[msg.sender] -= _amount;
        DeNewsToken.transfer(msg.sender, _amount);
    }

    function onERC721Received(
        address,
        address,
        uint256,
        bytes memory
    ) public virtual override returns (bytes4) {
        return this.onERC721Received.selector;
    }
}
