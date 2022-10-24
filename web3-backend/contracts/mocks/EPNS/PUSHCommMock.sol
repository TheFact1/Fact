// SPDX-License-Identifier: MIT
pragma solidity ^0.8;

contract PUSHCommMock {
    bytes32 private void;

    function sendNotification(
        address _channel,
        address _recipient,
        bytes calldata _identity
    ) public {
        void = keccak256(abi.encodePacked(_channel, _recipient, _identity));
    }
}
