// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.9;

/**
 * @title Inspect1
 * @dev A contract for inspecting a private address variable.
 */
contract Inspect1 {
    address private testAddress;

    /**
     * @dev Sets the value of the private testAddress variable.
     * @param _testAddress The address to be set.
     */
    function setAddress(address _testAddress) public {
        testAddress = _testAddress;
    }
}
