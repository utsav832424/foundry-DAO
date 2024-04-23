// SPDX-License-Identifier: SEE LICENSE IN LICENSE
pragma solidity ^0.8.19;

import {Ownable} from "@openzeppelin/contracts/access/Ownable.sol";

contract Box is Ownable {
    constructor() Ownable(msg.sender) {}

    uint256 private s_number;

    event ValueChanged(uint256 newNumber);

    function store(uint256 _newNumber) public onlyOwner {
        s_number = _newNumber;
        emit ValueChanged(_newNumber);
    }

    function getNumber() external view returns (uint256) {
        return s_number;
    }
}
