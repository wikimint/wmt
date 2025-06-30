# WikimintToken.sol – Smart Contract Overview

This directory contains the Solidity smart contract for the **Wikimint (WMT)** BEP-20 token deployed on the Binance Smart Chain (BSC). The contract is based on OpenZeppelin libraries and includes advanced features such as pausing, minting, burning, and capped supply.

---

## 📜 Contract Name
**Wikimint**  
Filename: `WikimintToken.sol`

---

## ⚙️ Features

| Feature             | Description |
|---------------------|-------------|
| `ERC20`             | Standard token implementation (OpenZeppelin) |
| `ERC20Burnable`     | Allows users to burn (destroy) their own tokens |
| `ERC20Capped`       | Enforces a maximum total token supply |
| `Ownable`           | Restricts certain functions (like mint/pause) to the contract owner |
| `Pausable`          | Owner can pause/unpause token transfers (e.g. during an emergency) |

---

## 📦 Token Details

| Property         | Value |
|------------------|-------|
| Name             | WIKIMINT |
| Symbol           | WMT |
| Decimals         | 18 |
| Max Supply       | 10,000,000 WMT |
| Initial Mint     | 100,000 WMT to `msg.sender` (deployer) |

---

## 🔐 Owner Privileges

Only the contract owner (usually the deployer) can:

- ✅ Mint new tokens (up to the cap)
- ✅ Pause or unpause token transfers
- ✅ Transfer ownership to another address

---

## 🚧 Functions Overview

### ✅ `constructor()`
Initializes:
- Token name/symbol
- Supply cap
- Mints 100,000 WMT to the deployer

### ✅ `mint(address to, uint256 amount)`
- Mints new tokens to a specified address
- Can only be called by the owner
- Respects total supply cap

### ✅ `pause()` / `unpause()`
- Halts or resumes all token transfers
- Can only be triggered by the owner

### ✅ `_update()` (overridden)
- Internal function that resolves conflict between `ERC20` and `ERC20Capped`
- Wrapped in `whenNotPaused` modifier to block transfers when paused

---

## 🧱 Inheritance Structure

```solidity
Wikimint
├── ERC20
├── ERC20Capped
├── ERC20Burnable
├── Pausable
└── Ownable 
```

## 📁 Directory Structure

smart-contract/
├── WikimintToken.sol # Main token contract
└── README.md # This file (contract overview)

## 📁 File Location

This file is part of the following directory structure:

wmt/
├── smart-contract/
│ ├── WikimintToken.sol # Main token contract
│ └── README.md # This file (contract overview)
├── whitepaper.pdf # Token whitepaper
├── logo/
│ ├── wikimint-icon.svg
│ └── logo.png
├── docs/
│ ├── tokenomics.md
│ ├── roadmap.md
│ └── faq.md
├── audit/
│ └── audit-report.pdf
├── community/
│ ├── governance.md
│ └── community-guidelines.md
├── LICENSE
└── README.md # Root project overview

## 🧰 Dependencies

The contract uses **OpenZeppelin Contracts v4+**.

### Imports:
```solidity
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Capped.sol";
import "@openzeppelin/contracts/security/Pausable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";
```
To install dependencies:
npm install @openzeppelin/contracts

## 🧱 ABI & Bytecode Files

You can find the contract interface and deployment bytecode below:

- [ABI – WikimintToken.json](./abi/WikimintToken.json)
- [Bytecode (JSON) – WikimintToken.bytecode.json](./abi/WikimintToken.bytecode.json)
- [Bytecode (Raw Text) – WikimintToken.bytecode.txt](./abi/WikimintToken.bytecode.txt)

## 📄 License

This smart contract is released under the MIT License.

You can find the full license text in the LICENSE file in the root of the repository.

## 👤 Author

Developed by Selvakumaran Krishnan
📧 support@wikimint.com