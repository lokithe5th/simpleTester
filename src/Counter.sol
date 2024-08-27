// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract Counter {
    uint256 public number = 1;
    address internal canary = address(123123);
    address internal governor;

    function setNumber(uint256 newNumber) public {
        if (newNumber != 0) {
            number = newNumber;
        }
    }

    function increment() public {
        number++;
    }

    function governanceCanary() public view {
        require(canary != governor);
    }

    function setGovernor(address _gov) public {
        governor = _gov;
    }
}
