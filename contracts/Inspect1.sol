// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Inspect1 {
    address private testAddress;

    function setAddress(address _testAddress) public {
        testAddress = _testAddress;
    }
}
