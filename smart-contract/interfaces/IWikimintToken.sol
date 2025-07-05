// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

/// @title IWikimintToken - Interface for Wikimint (WMT) Token
interface IWikimintToken {
    function decimals() external view returns (uint8);
    function totalSupply() external view returns (uint256);
    function balanceOf(address account) external view returns (uint256);
}
