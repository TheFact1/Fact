// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract DeNewsToken is ERC20, ERC20Burnable, Ownable {
    address public addressDeNewsManager;

    constructor(uint256 _startSupply) ERC20("DeNewsToken", "DeNT") {
        _mint(msg.sender, _startSupply * 10**decimals());
    }

    function mint(address to, uint256 amount) external {
        require(
            msg.sender == addressDeNewsManager,
            "The mint function is only available for the deposit contract!"
        );
        _mint(to, amount);
    }

    function setDeNewsManagerContract(address _address) public onlyOwner {
        addressDeNewsManager = _address;
    }
}
