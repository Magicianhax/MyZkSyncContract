// MyZkSyncContract.sol
// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import {IZkSync} from "./IZkSync.sol";

contract MyZkSyncContract {
    IZkSync public zkSync;

    constructor(address _zkSyncAddress) {
        zkSync = IZkSync(_zkSyncAddress);
    }

    // Deposit funds to zkSync
    function deposit() external payable {
        require(msg.value > 0, "Deposit amount must be greater than 0");
        zkSync.deposit{value: msg.value}();
    }

    // Withdraw funds from zkSync
    function withdraw(uint256 amount) external {
        require(amount > 0, "Withdrawal amount must be greater than 0");
        zkSync.withdraw(amount);
    }

    // Transfer funds within zkSync
    function transfer(address to, uint256 amount) external {
        require(amount > 0, "Transfer amount must be greater than 0");
        zkSync.transfer(to, amount);
    }

    // Add other functions based on your requirements

    // Fallback function to receive Ether
    receive() external payable {}
}
