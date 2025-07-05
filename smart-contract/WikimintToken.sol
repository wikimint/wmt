// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";

contract Wikimint is ERC20 {
    constructor() ERC20("Wikimint", "WMT") {
        _mint(msg.sender, 10_000_000 * 10 ** decimals());
    }
}
