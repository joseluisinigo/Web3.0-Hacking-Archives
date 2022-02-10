// SPDX-License-Identifier: MIT
pragma solidity 0.8.11;

interface ILAND {
    function _burn(address, address, uint256) external;

    function _owners(uint256) external view returns (uint256);

    function _numNFTPerAddress(address) external view returns (uint256);
}