// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "@openzeppelin/contracts/token/ERC721/ERC721.sol";
import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
import "../interfaces/IDeNewsManager.sol";
import "../interfaces/IDeNewsVoting.sol";
import "../interfaces/IPUSHCommInterface.sol";

contract DeNewsMedia is ERC721, ERC721URIStorage, Ownable {
    IDeNewsManager DeNewsManager;
    IDeNewsVoting DeNewsVoting;
    IPUSHCommInterface PUSHComm;

    address public channelAddress;

    constructor() ERC721("DeNewsMedia", "DeNewsMD") {}

    function setDeNewsManagerContract(address _addressDeNewsManager)
        external
        onlyOwner
    {
        DeNewsManager = IDeNewsManager(_addressDeNewsManager);
    }

    function setDeNewsVotingContract(address _addressDeNewsVoting)
        external
        onlyOwner
    {
        DeNewsVoting = IDeNewsVoting(_addressDeNewsVoting);
    }

    function setPUSHCommContract(address _addressComm) external onlyOwner {
        PUSHComm = IPUSHCommInterface(_addressComm);
    }

    function setEPNSChannel(address _channelAddress) external onlyOwner {
        channelAddress = _channelAddress;
    }

    function safeMint(
        uint256 _ballotID,
        string memory _cid,
        address _fakeHunter
    ) public {
        require(
            msg.sender == address(DeNewsVoting),
            "This function can call only Voting contract!"
        );
        string memory _tokenURI = string.concat("ipfs://", _cid);
        _safeMint(address(DeNewsManager), _ballotID);
        _setTokenURI(_ballotID, _tokenURI);

        //function to send on-chain notification
        PUSHComm.sendNotification(
            channelAddress, // from channel
            _fakeHunter, // to recipient
            bytes(
                string(
                    abi.encodePacked(
                        "0",
                        "+",
                        "3",
                        "+",
                        "from smartcontracts",
                        "+",
                        "Your dispute is open "
                    )
                )
            )
        );
    }

    function changeNewsURI(uint256 tokenId, string memory uri)
        external
        onlyOwner
    {
        _setTokenURI(tokenId, uri);
    }

    function _burn(uint256 tokenId)
        internal
        override(ERC721, ERC721URIStorage)
        onlyOwner
    {
        super._burn(tokenId);
    }

    function tokenURI(uint256 tokenId)
        public
        view
        override(ERC721, ERC721URIStorage)
        returns (string memory)
    {
        return super.tokenURI(tokenId);
    }

    //Function to convert uint into string
    function uint2str(uint _i)
        internal
        pure
        returns (string memory _uintAsString)
    {
        if (_i == 0) {
            return "0";
        }
        uint j = _i;
        uint len;
        while (j != 0) {
            len++;
            j /= 10;
        }
        bytes memory bstr = new bytes(len);
        uint k = len - 1;
        while (_i != 0) {
            bstr[k--] = bytes1(uint8(48 + (_i % 10)));
            _i /= 10;
        }
        return string(bstr);
    }
}
