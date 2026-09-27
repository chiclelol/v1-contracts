# Chicle.LOL — Smart Contracts Monorepo

![Chicle Cover](resources/images/cover.png)

[![License: GPL v3](https://img.shields.io/badge/License-GPLv3-blue.svg)](LICENSE)
[![Network: Polygon](https://img.shields.io/badge/Network-Polygon%20Mainnet%20(137)-8247E5.svg)](https://polygonscan.com/address/0x76032b449e2bb6373646e6dda9f05a0d61ac3b72#code)
[![Solidity](https://img.shields.io/badge/Solidity-0.8.37-363636.svg)](https://soliditylang.org/)
[![OpenZeppelin](https://img.shields.io/badge/OpenZeppelin-Contracts%20v5-4E5EE4.svg)](https://openzeppelin.com/contracts/)

Official smart contracts repository for **Chicle.LOL** (`CHICLE`), a community-owned Web3 ecosystem focused on developing Decentraland tooling, building metaverse utilities, and delivering MANA rewards to ecosystem holders.

---

## Project Overview

**Chicle.LOL** combines community governance, metaverse tooling, and decentralized finance liquidity into a unified token ecosystem:

- **Decentraland Tooling**: Purpose-built infrastructure and interactive tools supporting creators, builders, and scene developers within Decentraland.
- **MANA Rewards**: Mechanics designed to deliver MANA rewards and value accrual back to active ecosystem participants and token holders.
- **On-chain Governance**: Native token voting power backed by checkpointed history, enabling decentralization via a dedicated DAO Governor and Timelock Controller.
- **Concentrated Liquidity**: 100% of the token supply structured for deep liquidity and automated trading mechanisms on Uniswap v4.

---

## Official Token Deployment

`ChicleToken` has been officially deployed, verified, and active on **Polygon Mainnet**:

| Parameter | Value |
|---|---|
| **Token Name** | `Chicle.LOL` |
| **Token Symbol** | `CHICLE` |
| **Decimals** | `18` |
| **Total Supply** | `1,000,000,000,000` CHICLE (`1,000,000,000,000 * 10^18` wei) |
| **Network** | Polygon Mainnet (PoS) |
| **Chain ID** | `137` |
| **Contract Address** | [`0x76032b449e2bb6373646e6dda9f05a0d61ac3b72`](https://polygonscan.com/address/0x76032b449e2bb6373646e6dda9f05a0d61ac3b72#code) |
| **Deployment Transaction** | [`0xc6be1c5b58bce1907bd2f144dc218bbadcc7525ebae1a6a1c09dcb43ae8b6977`](https://polygonscan.com/tx/0xc6be1c5b58bce1907bd2f144dc218bbadcc7525ebae1a6a1c09dcb43ae8b6977) |
| **Deployment Block** | `94507695` |
| **Deployer / Initial Recipient** | [`0xCa8F3933601b4627680d4F26791489ac434D3D77`](https://polygonscan.com/address/0xCa8F3933601b4627680d4F26791489ac434D3D77) |
| **Contract Verification** | Verified on [Polygonscan](https://polygonscan.com/address/0x76032b449e2bb6373646e6dda9f05a0d61ac3b72#code) & [Sourcify](https://sourcify.dev/server/repo-ui/137/0x76032b449e2bb6373646e6dda9f05a0d61ac3b72) |
| **Compiler Version** | Solidity `0.8.37` |
| **Optimization** | Enabled (`200` runs, via EVM `cancun`) |
| **OpenZeppelin Version** | `Contracts v5.x` |

---

## Token Architecture & Features

The `ChicleToken` contract ([`contracts/token/ChicleToken.sol`](contracts/token/ChicleToken.sol)) is implemented using OpenZeppelin Contracts v5 primitives:

1. **ERC-20 Standard**: Standard fungible token implementation with modern gas-optimized `_update` logic and custom errors.
2. **ERC-20 Permit (EIP-2612)**: Enables gasless, signature-based approvals (`permit`) allowing users to interact with decentralized exchanges and dApps without requiring an initial ETH/POL-paying approval transaction.
3. **ERC-20 Votes**: Integrates checkpointed vote tracking (`getVotes`, `getPastVotes`, `delegate`) compatible with OpenZeppelin `Governor` contracts. Voting weight is activated upon delegation without locking tokens.
4. **Fixed Supply**: Entire initial supply of `1,000,000,000,000` CHICLE was minted at deployment to the deployer address for liquidity setup and ecosystem allocation. No additional minting capability exists.

---

## Repository Structure

```text
.
├── contracts/
│   └── token/
│       └── ChicleToken.sol    # Core ERC20 + ERC20Permit + ERC20Votes token contract
├── LICENSE                    # GNU General Public License v3.0
└── README.md                  # Project overview & deployment documentation
```

> **Note**: This repository is being updated in structured phases. Additional smart contracts and modules will be published here periodically as they complete their development, testing, and deployment cycles.

---

## Staged Contract Roadmap

The protocol smart contracts are being staged for release across the following components:

- [x] **Phase 1: Core Token**: `ChicleToken` deployed and verified on Polygon Mainnet.
- [ ] **Phase 2: DAO Governance**: `ChicleGovernor` and `ChicleTimelock` contracts for on-chain community proposals, delays, and treasury management.
- [ ] **Phase 3: Reward & Utility Systems**: Decentraland ecosystem tools and wrapped MANA distribution contracts.
- [ ] **Phase 4: Uniswap v4 Hook Integration**: Custom Uniswap v4 hooks for liquidity incentives and dynamic pool interactions.

---

## Official Links & Resources

- **Website**: [https://chicle.lol](https://chicle.lol)
- **X (Twitter)**: [https://x.com/chiclelol](https://x.com/chiclelol)
- **GitHub**: [https://github.com/chiclelol](https://github.com/chiclelol)
- **Token on Polygonscan**: [`0x76032b449e2bb6373646e6dda9f05a0d61ac3b72`](https://polygonscan.com/address/0x76032b449e2bb6373646e6dda9f05a0d61ac3b72#code)

---

## License

All smart contracts and documentation in this repository are licensed under the **GNU General Public License v3.0** (`GPL-3.0`). See [LICENSE](LICENSE) for full details.