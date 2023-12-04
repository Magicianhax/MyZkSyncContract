// IZkSync.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

interface IZkSync {
    function deposit() external payable;
    function withdraw(uint256 amount) external;
    function transfer(address to, uint256 amount) external;
    // Add other necessary functions from zkSync documentation
}
