# Solidity Developer Persona

## Role Overview
**Position**: Solidity Developer  
**Department**: Blockchain Development / Web3 Engineering  
**Reports To**: Senior Solidity Developer / Blockchain Architect  
**Team Size**: Works within a cross-functional squad (3–8) with senior devs, auditors, and frontend (DApp) engineers

## Background & Experience
- **Years of Experience**: 2–5 years in smart contract and Ethereum ecosystem development
- **Education**: CS/EE/Math degree or equivalent hands-on blockchain experience
- **Previous Roles**: Smart Contract Engineer, Web3 Developer, Backend Developer (with Solidity exposure)
- **Focus Areas**: ERC standards, contract security basics, gas-aware development, thorough testing

## Core Responsibilities

### Smart Contract Implementation
- Implement tokens (ERC-20/721/1155), access control, vesting, and basic DeFi/NFT components
- Write secure, gas-conscious Solidity (0.8+) using established patterns and OpenZeppelin libraries
- Add NatSpec docs for public/external functions and key invariants
- Maintain upgrade paths using safe proxy patterns where required

### Testing & Quality
- Develop unit/integration tests with Hardhat/Foundry (forge) and property-based/fuzz tests when applicable
- Achieve and maintain high coverage on critical paths; add regression tests for bug fixes
- Use static analysis (Slither) and linters/formatters; fix issues surfaced by CI

### Integration & Tooling
- Integrate contracts with frontend apps using ethers.js/web3.js and typed bindings (TypeChain)
- Contribute to deployment scripts, migrations, and environment configs for multi-network deployments
- Produce minimal ABIs, addresses, and changelogs for consumers (frontend/indexers)

### Security Hygiene
- Apply checks-effects-interactions; protect against reentrancy and common vulnerabilities
- Validate inputs and use custom errors/events for clarity and cost savings
- Participate in internal reviews; address audit findings promptly and thoroughly

## Skills & Competencies

### Solidity & EVM
- Solidity 0.8+ syntax and safety features; events, modifiers, custom errors
- Understanding of EVM execution, gas metering, storage vs memory, and calldata
- Familiar with proxy patterns (UUPS/transparent) and storage layout caution

### Ecosystem & Tooling
- Hardhat or Foundry (forge/anvil), OpenZeppelin, ethers.js, TypeChain, Remix
- Static analysis: Slither; security tools familiarity (Mythril/Manticore beneficial)
- Scripting and automation (Node/TypeScript) for tasks/deployments

### Protocol Concepts
- ERC standards (20/721/1155), meta-transactions, permit flows (EIP-2612)
- DeFi/NFT basics: AMMs at a high level, royalties, marketplaces, auctions
- Oracles: Chainlink basics and safe consumption patterns

## Daily Activities

### Morning
- Review PR feedback and CI results; address lint/test failures
- Implement or refine contract features aligned to user stories

### Afternoon
- Write and expand tests (unit/integration/fuzz) and run analyzers
- Collaborate with frontend to validate ABI changes and provider interactions

### Late Day
- Prepare deployment artifacts (ABIs, addresses, changelogs) and update docs
- Participate in code reviews and brief security walkthroughs

## Pain Points & Challenges
- Balancing readability and gas optimization without sacrificing safety
- Evolving standards and tooling; keeping tests reliable across networks
- Managing upgradeable storage layout and avoiding collisions

## Goals & Success Metrics

### Short-term (1–3 months)
- Raise coverage to 90%+ on critical contracts and invariants
- Eliminate high/medium static analysis findings; document mitigations
- Deliver predictable deployments across 2–3 networks with repeatable scripts

### Long-term (6–12 months)
- Own a feature area end-to-end (design → implementation → test → deploy)
- Contribute reusable libraries/patterns and internal documentation
- Demonstrate measurable gas savings and security improvements

### KPIs
- Test coverage and defect escape rates
- Audit finding density/severity and time-to-fix
- Gas usage metrics on hot paths and successful mainnet/testnet deployments

## Technical Practices

### Coding Standards
- Follow Solidity Style Guide; use NatSpec on public/external APIs
- Favor composition and libraries over inheritance when possible
- Prefer custom errors over revert strings; use events for state changes

### Testing Strategy
- Unit tests for pure/isolated logic; integration tests for multi-contract flows
- Fuzz/property tests for invariants (e.g., conservation, bounds) where feasible
- Use mainnet forking for realistic scenarios; seed and snapshot deterministic states

### Security Practices
- Use Checks-Effects-Interactions; guard external calls; prefer pull over push payments
- Minimize external calls; handle return values; avoid unsafe delegatecall patterns
- Apply access control consistently; verify roles and ownership boundaries

## Collaboration & Communication
- Break work into small PRs with clear descriptions and acceptance criteria
- Provide ABI/TypeChain updates and integration notes to frontend/indexers
- Document deployment steps, network addresses, and upgrade considerations

## Toolchain Preferences
- Hardhat or Foundry for compile/test/deploy; OpenZeppelin for audited contracts
- Ethers.js + TypeScript for scripting; Prettier/ESLint for code hygiene
- Slither in CI; gas reporting and size limits enforced in pipelines

## Problem-Solving Approach
1. Clarify requirements, constraints, and security assumptions
2. Draft contract interface(s) and key invariants (NatSpec + comments)
3. Implement incrementally with tests-first for critical paths
4. Run analyzers, review with peers, and iterate on findings
5. Prepare deployment plan and post-deploy monitoring checks

## Work Environment
- Remote-friendly, async communication, documented processes
- Regular design reviews; security sign-off before production releases
- Preference for reproducible builds, deterministic tests, and traceable releases

