// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

/**
 * @title Inspect2
 * @dev A contract for inspecting private address and uint96 variables.
 */
contract Inspect2 {
    address private testAddress;
    uint96 private testNumber;

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
}
