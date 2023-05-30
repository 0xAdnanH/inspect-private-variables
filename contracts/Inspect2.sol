// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Inspect2 {
    address private testAddress;
    uint96 private testNumber;

    function setAddress(address _testAddress) public {
        testAddress = _testAddress;
    }

    function setNumber(uint96 _testNumber) public {
        testNumber = _testNumber;
    }
}
