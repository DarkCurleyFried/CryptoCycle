# CoinCycle

### Mission Statement
*CoinCycle is a decentralized protocol that collects low-value or unused crypto tokens from users, consolidates them, and strategically reinvests them into promising crypto assets. Profits are redistributed proportionally to contributors based on their initial donation value, while a small protocol fee is retained to support development and sustainability.*

---

## Whitepaper (Draft)

### 1. Introduction
- Problem: Many users hold insignificant amounts of diverse tokens they no longer use.
- Opportunity: These tokens could be pooled, converted, and reinvested to generate returns.
- Solution: CoinCycle creates a trustless smart contract system to automate this process.

### 2. Architecture Overview
- **Users** contribute low-value tokens to the CoinCycle vault.
- **Oracle integration (e.g., Chainlink)** calculates approximate market value at entry.
- **Swapping Layer** (Uniswap/1inch) converts tokens into stable or target assets.
- **Investment Strategy** deploys pooled funds into DeFi yield protocols (e.g., Aave, Yearn).
- **Profit Distribution** logic redistributes earnings proportionally based on original contribution.
- **Platform Fee:** e.g., 5% retained for protocol sustainability.

### 3. Smart Contract Design (Vault)
- Handles token deposits, conversion, allocation, yield collection, and withdrawals
- Key Components:
  - `deposit(tokenAddress, amount)`
  - `estimateValue(tokenAddress, amount)` (via Oracle)
  - `swapToStable(token)`
  - `distributeYield()`
  - `claimProfits(address user)`

### 4. Token Handling and Valuation
- Supported ERC-20 tokens only (initially)
- Uses Chainlink price feeds for real-time value estimation
- Value snapshot taken at deposit for fair share tracking

### 5. Governance (optional / future)
- DAO to vote on target assets, fee percentages, reinvestment strategy

### 6. Roadmap
| Phase | Milestone |
|-------|-----------|
| Alpha | Smart Contract MVP on Polygon Testnet |
| Beta  | dApp Frontend + Vault Functionality |
| Launch | Mainnet Deployment + GitHub/Docs Release |
| v1.1  | DAO Framework, Custom Strategy Engine |

---

## Repository Structure
```
CoinCycle/
├── contracts/             # Smart contracts (Solidity)
│   └── Vault.sol
├── frontend/              # React/Next.js dApp frontend
├── scripts/               # Deployment / testing scripts
├── README.md
├── WHITEPAPER.md
└── LICENSE
```

---

## License
**Proposed:** MIT for code, CC BY-NC 4.0 for documentation (non-commercial reuse only)

---

## Contributors Wanted
- Solidity Developers
- Frontend Web3 Developers
- Strategy/Tokenomics Analysts
- Legal Advisors (Crypto/DeFi regulatory)

If you're interested in contributing, open an issue or contact the repo maintainer.

---

*Initial draft by Christopher Puchanan / Lu, 2025.*
