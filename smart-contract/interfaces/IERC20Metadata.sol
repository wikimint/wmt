// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IERC20Metadata - Optional metadata functions from ERC20 standard
interface IERC20Metadata {
    function name() external view returns (string memory);
    function symbol() external view returns (string memory);
    function decimals() external view returns (uint8);
}
