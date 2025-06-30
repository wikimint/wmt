// SPDX-License-Identifier: MIT
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract Wikimint is ERC20Capped, ERC20Burnable, Pausable, Ownable {
    constructor()
        ERC20("WIKIMINT", "WMT")
        ERC20Capped(10_000_000 * 10 ** 18)
        Ownable(msg.sender)
    {
        _mint(msg.sender, 100_000 * 10 ** decimals());
    }

    function pause() public onlyOwner {
        _pause();
    }

    function unpause() public onlyOwner {
        _unpause();
    }

    function mint(address to, uint256 amount) public onlyOwner {
        _mint(to, amount);
    }

    // ✅ Resolves _update() conflict between ERC20 and ERC20Capped
    function _update(address from, address to, uint256 value)
        internal
        override(ERC20, ERC20Capped)
        whenNotPaused
    {
        super._update(from, to, value);
    }
}
