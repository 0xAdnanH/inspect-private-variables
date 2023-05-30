// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

contract Inspect3 {
    address private testAddress;
    uint96 private testNumber;
    bytes32 private testBytes32;

    function setAddress(address _testAddress) public {
        testAddress = _testAddress;
    }

    function setNumber(uint96 _testNumber) public {
        testNumber = _testNumber;
    }

    function setBytes32(bytes32 _testBytes32) public {
        testBytes32 = _testBytes32;
    }
}
