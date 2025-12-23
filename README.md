# Solidity Practice Contracts

This repository contains a collection of Solidity smart contracts written for
learning, experimentation, and skill progression.

Each contract is intentionally scoped and increases in complexity, focusing on
one or two new concepts at a time rather than trying to do everything at once.

The goal of this repository is to demonstrate **fundamental smart contract
engineering skills**, not to deploy production-ready protocols.

---

## Contracts

### CipherToken
A basic ERC20-style token implementation written from scratch (without
OpenZeppelin) to reinforce core Solidity concepts.

**Current features:**
- Token balances
- `transfer` functionality
- Constructor-based initial supply minting

**Concepts practiced:**
- State variables and mappings
- Value transfers between accounts
- Constructor initialization
- Basic access patterns

Future iterations of this contract will add:
- Events
- Custom errors
- Allowances (`approve` / `transferFrom`)
- Minting and burning
- Supply caps and pausability

---

## Design Philosophy

- Small, focused contracts
- No copy-paste OpenZeppelin abstractions (until fundamentals are mastered)
- Explicit logic over magic
- Incremental complexity
- Readable, well-commented code

---

## Tooling

- Written and compiled using **Remix Desktop**
- Version-controlled with **Git**
- Built artifacts are intentionally excluded from the repository

---

## Disclaimer

These contracts are for educational purposes only and **have not been audited**.
They should not be used in production environments.

---

## Author

Timothy Long  
GitHub: https://github.com/tlongmx4
