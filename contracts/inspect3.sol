// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

/**
 * @title Inspect3
 * @dev A contract for inspecting private address, uint96, and bytes32 variables.
 */
contract Inspect3 {
    address private testAddress;
    uint96 private testNumber;
    bytes32 private testBytes32;

    /**
     * @dev Sets the value of the private testAddress variable.
     * @param _testAddress The address to be set.
     */
    function setAddress(address _testAddress) public {
        testAddress = _testAddress;
    }

    /**
     * @dev Sets the value of the private testNumber variable.
     * @param _testNumber The uint96 value to be set.
     */
    function setNumber(uint96 _testNumber) public {
        testNumber = _testNumber;
    }

    /**
     * @dev Sets the value of the private testBytes32 variable.
     * @param _testBytes32 The bytes32 value to be set.
     */
    function setBytes32(bytes32 _testBytes32) public {
        testBytes32 = _testBytes32;
    }
}
