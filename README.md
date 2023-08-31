# ✨ So you want to run an audit

This `README.md` contains a set of checklists for our audit collaboration.

Your audit will use two repos: 
- **an _audit_ repo** (this one), which is used for scoping your audit and for providing information to wardens
- **a _findings_ repo**, where issues are submitted (shared with you after the audit) 

Ultimately, when we launch the audit, this repo will be made public and will contain the smart contracts to be reviewed and all the information needed for audit participants. The findings repo will be made public after the audit report is published and your team has mitigated the identified issues.

Some of the checklists in this doc are for **C4 (🐺)** and some of them are for **you as the audit sponsor (⭐️)**.

---

# Audit setup

## 🐺 C4: Set up repos
- [ ] Create a new private repo named `YYYY-MM-sponsorname` using this repo as a template.
- [ ] Rename this repo to reflect audit date (if applicable)
- [ ] Rename audit H1 below
- [ ] Update pot sizes
- [ ] Fill in start and end times in audit bullets below
- [ ] Add link to submission form in audit details below
- [ ] Add the information from the scoping form to the "Scoping Details" section at the bottom of this readme.
- [ ] Add matching info to the Code4rena site
- [ ] Add sponsor to this private repo with 'maintain' level access.
- [ ] Send the sponsor contact the url for this repo to follow the instructions below and add contracts here. 
- [ ] Delete this checklist.

# Repo setup

## ⭐️ Sponsor: Add code to this repo

- [ ] Create a PR to this repo with the below changes:
- [ ] Provide a self-contained repository with working commands that will build (at least) all in-scope contracts, and commands that will run tests producing gas reports for the relevant contracts.
- [ ] Make sure your code is thoroughly commented using the [NatSpec format](https://docs.soliditylang.org/en/v0.5.10/natspec-format.html#natspec-format).
- [ ] Please have final versions of contracts and documentation added/updated in this repo **no less than 48 business hours prior to audit start time.**
- [ ] Be prepared for a 🚨code freeze🚨 for the duration of the audit — important because it establishes a level playing field. We want to ensure everyone's looking at the same code, no matter when they look during the audit. (Note: this includes your own repo, since a PR can leak alpha to our wardens!)


---

## ⭐️ Sponsor: Edit this README

Under "SPONSORS ADD INFO HERE" heading below, include the following:

- [ ] Modify the bottom of this `README.md` file to describe how your code is supposed to work with links to any relevent documentation and any other criteria/details that the C4 Wardens should keep in mind when reviewing. ([Here's a well-constructed example.](https://github.com/code-423n4/2022-08-foundation#readme))
  - [ ] When linking, please **provide all links as full absolute links** versus relative links
  - [ ] All information should be provided in markdown format (HTML does not render on Code4rena.com)
- [ ] Under the "Scope" heading, provide the name of each contract and:
  - [ ] source lines of code (excluding blank lines and comments) in each
  - [ ] external contracts called in each
  - [ ] libraries used in each
- [ ] Describe any novel or unique curve logic or mathematical models implemented in the contracts
- [ ] Does the token conform to the ERC-20 standard? In what specific ways does it differ?
- [ ] Describe anything else that adds any special logic that makes your approach unique
- [ ] Identify any areas of specific concern in reviewing the code
- [ ] Review the Gas award pool amount. This can be adjusted up or down, based on your preference - just flag it for Code4rena staff so we can update the pool totals across all comms channels.
- [ ] Ensure that all links and image/file paths in this README use absolute paths, not relative paths. 
- [ ] Optional / nice to have: pre-record a high-level overview of your protocol (not just specific smart contract functions). This saves wardens a lot of time wading through documentation.
- [ ] See also: [this checklist in Notion](https://code4rena.notion.site/Key-info-for-Code4rena-sponsors-f60764c4c4574bbf8e7a6dbd72cc49b4#0cafa01e6201462e9f78677a39e09746)
- [ ] Delete this checklist and all text above the line below when you're ready.

---

# Ondo Finance audit details
- Total Prize Pool: $36,500 USDC (Notion: Total award pool)
  - HM awards: $24,750 USDC (Notion: HM (main) pool)
  - Analysis awards: $1,500 USDC (Notion: Analysis pool)
  - QA awards: $750 USDC (Notion: QA pool)
  - Bot Race awards: $2,250 USDC (Notion: Bot Race pool)
  - Gas awards: $750 USDC (Notion: Gas pool)
  - Judge awards: $3,600 USDC (Notion: Judge Fee)
  - Lookout awards: $2,400 USDC (Notion: Sum of Pre-sort fee + Pre-sort early bonus)
  - Scout awards: $500 USDC (Notion: Scout fee - but usually $500 USDC)
- Join [C4 Discord](https://discord.gg/code4rena) to register
- Submit findings [using the C4 form](https://code4rena.com/contests/2023-09-ondo-finance/submit)
- [Read our guidelines for more details](https://docs.code4rena.com/roles/wardens)
- Starts September 01, 2023 20:00 UTC (ex. `Starts March 22, 2023 20:00 UTC`)
- Ends September 07, 2023 20:00 UTC (ex. `Ends March 30, 2023 20:00 UTC`)

## Automated Findings / Publicly Known Issues

Automated findings output for the audit can be found [here](bot-report.md) within 24 hours of audit opening.

*Note for C4 wardens: Anything included in the automated findings output is considered a publicly known issue and is ineligible for awards.*

[ ⭐️ ↓SPONSORS ADD INFO HERE↓] 

# Overview


# Introduction to rUSDY 
`rUSDY` Is an interest bearing stablecoin, and can be thought of as a rebasing variant of  Ondo's USDY (Ondo U.S. Dollar Yield) token. Individuals who hold USDY are able to wrap their USDY tokens and receive an amount of rUSDY tokens proportional to the USD value wrapped. Each rUSDY token is worth 1 dollar, as USDY accrues value (appreciates in price) rUSDY will rebase accordingly.

In order to determine the current price of USDY, the oracle contract `RWADynamicOracle.sol` is utilized. This contract allows for the price evolution of USDY over a fixed range to be stored on chain and referenced as needed, by the rUSDY contract.

### Background on USDY
The USDY contract is an upgradeable (Transparent Upgradeable Proxy) with transfer restrictions. USDY is not required to abide by the same transfer restrictions as OUSG/OMMF. In order to hold, send and receive USDY. A user will need to add themselves to the [allowlist](contracts/usdy/allowlist/AllowlistUpgradeable.sol), not be present on the [blocklist](contracts/usdy/blocklist/Blocklist.sol), and not be on a [sanctionsList](https://etherscan.io/address/0x40C57923924B5c5c5455c48D93317139ADDaC8fb) 

USDY represents tokenized bank deposits. Since deposits at US banks earn interest the redemption price of USDY appreciates as time progresses. Consequently the price of evolution of USDY over time will look like the graph below. Please note that as the yield on these bank deposits change, the slope of the line will also vary to reflect the updated yield. 

![Alt text](<Screenshot 2023-08-28 at 3.34.06 PM.png>)
<br>
[FIG-01]

## [rUSDY](contracts/usdy/rUSDY.sol)
rUSDY is the rebasing variant of [USDY](https://etherscan.io/address/0x96F6eF951840721AdBF46Ac996b59E0235CB985C) token, and is heavily based on other rebasing tokens such as `stETH`. Users are able to acquire rUSDY tokens by calling the `wrap(uint256)` function on the contract. Where as the price of a single USDY token varies over time, the price of a single rUSDY token is fixed at a price of 1 Dollar, with yield being accrued in the form of additional rUSDY tokens. Similarly when a user wishes to convert their `rUSDY` to `USDY` they are able to call the `unwrap(uint256)` function, and receive their corresponding amount of `USDY`.

In order to determine the USD value of the USDY locked in the contract, rUSDY will call into `RWADynamicRateOracle.sol` in order to fetch the current price.


Because `rUSDY` is the rebasing variant of `USDY` the same transfer restrictions for `USDY` will also be applied to the `rUSDY` token in the `beforeTransfer(address,address,uint256)` hook.

## [RWADynamicRateOracle](contracts/rwaOracles/RWADynamicOracle.sol)
The RWADynamcRateOracle contract is used to post price evolution for USDY on chain. This contract will accept a [`Range`](contracts/rwaOracles/RWADynamicOracle.sol#L295) as input from a trusted admin, and will apply the following conversion to the `lastSetPrice` for a given range:

```
currentPrice = (Range.dailyInterestRate ** (Days Elapsed + 1)) * Range.lastSetPrice
```
When plotted as a function of `block.timestamp`, the resulting plot should look identical to that of [FIG-01](#usdy). There is also functionality within the contract that if a range has elapsed and there is no subsequent range set, the oracle will return the maximum price of the previous range for all `block.timestamp` > `Range.end`

It is also important to note that when setting price's outside of the first range, the admin will only specify the `Range.end` and the `Range.dailyInterestRate` as the other parameters are calculated within the contract. 


## [SourceBridge](contracts/bridge/SourceBridge.sol)
This contract is designed to handle calls into the Axelar Gateway for bridging USDY or an RWA token and is to be deployed on the source chain. The contract will burn the bridging token that it supports and foreward over gas along with a payload to the Axelar gas service and Axelar gateway respectively. You can reference the Axelar documentation for more info [*Axelar Docs*](https://docs.axelar.dev/dev/intro).

## [DestinationBridge](contracts/bridge/DestinationBridge.sol)
This contract is designed to handle calls from the Axelar Gateway, and is to be deployed on the destination chain. `DestinationBridge.sol` requires that the address which originates the Axelar message passing is registered with the Receiver contract. Once the message has been received via the Axelar gateway it is queued and will be processed once it has the required number of approvals. The number of approvals corresponding to a transaction can vary based on the source chain and the amount being bridged.

This contract also implements a rate limit that will set a ceiling for the amount of tokens which the Receiver contract can mint over some fixed duration of time. 

# Scope

*List all files in scope in the table below (along with hyperlinks) -- and feel free to add notes here to emphasize areas of focus.*

*For line of code counts, we recommend running prettier with a 100-character line length, and using [cloc](https://github.com/AlDanial/cloc).* 

| Contract | SLOC | Purpose | Libraries used |  
| ----------- | ----------- | ----------- | ----------- |
| [contracts/bridge/Bridge.sol](contracts/bridge/SourceBridge.sol) | 89 | This contract serves as the source chain bridge for USDY | OZ Pausable & Ownable; Axelar Address Utils |
| [contracts/bridge/Receiver.sol](contacts/bridge/DestinationBridge.sol) | 225 | This contract serves as the destination chain bridge for USDY | OZ Pausable & Ownable; Axelar Executable and String Utils |
| [contracts/usdy/rUSDY.sol](contracts/usdy/rUSDY.sol) | 317 | The rebasing USDY token contract | OZ Upgradeable Contracts |
| [contracts/usdy/rUSDYFactory.sol](contracts/usdy/rUSDYFactory.sol) | 76 | The rUSDY deployment contract | OZ Proxy | 
| [contracts/rwaOracles/RWADynamicOracle.sol](contracts/rwaOracles/RWADynamicOracle.sol) | 251 |  This contract is the reference oracle used by rUSDY to get the price of USDY | OZ Access Control & Pausable |
| [contracts/rwaOracles/IRWADynamicOracle.sol](contracts/rwaOracles/RWADynamicOracle.sol) | 4 | Interfaces for IRWADynamicOracle | N/A |

## Out of scope
- Any imported Axelar library.

# Scoping Details 
```
- If you have a public code repo, please share it here:  
- How many contracts are in scope?:   6
- Total SLoC for these contracts?:  965
- How many external imports are there?: 2  
- How many separate interfaces and struct definitions are there for the contracts within scope?:  6
- Does most of your code generally use composition or inheritance?:   Inheritance
- How many external calls?:   1
- What is the overall line coverage percentage provided by your tests?: ~80%
- Is this an upgrade of an existing system?: False
- Check all that apply (e.g. timelock, NFT, AMM, ERC20, rollups, etc.): Multi-Chain, ERC-20 Token, Uses L2
- Is there a need to understand a separate part of the codebase / get context in order to audit this part of the protocol?:   False
- Please describe required context:   n/a
- Does it use an oracle?:  Others
- Describe any novel or unique curve logic or mathematical models your code uses: We derive the interest rate for day based on the interest rate for the month, code heavily inspired by makerdao DSS
- Is this either a fork of or an alternate implementation of another project?:  False 
- Does it use a side-chain?: False
- Describe any specific areas you would like addressed: Please try to mint infinitely many tokens of RUSDY with little or no USDY, or break the brdieg contracts by not sending but recieiving tokens on the other side
```

# Not In Scope

- **Centralization Risk** - we are aware that our management functions and contract upgradeability results in a significantly more centralized system than Compound V2.
- **Sanction related edge cases** specifically when a user’s `isAllowed` status or Sanction status changes in between different actions, leaving them at risk of their funds being locked
    - If someone gets sanctioned their funds are locked
    - If someone gets added to the blocklist their funds are locked
- **Malicous Admin/Operator** - we are aware that if an admin/operator has the ability to call various unrestrained setters, this is intentional. We are also aware that if these setters are used incorrectly the contracts may function incorrectly. Specifically through using the `overrideRange` function ranges may be updated s.t. the ranges may not be contiguous. 
- **Misc Items**
    - We are aware that pausing the `RWADynamicOracle` will result in the price not being returned in the `rUSDY` contract
    - In `RWADynamicOracle`, the operator will not add more than 2 ranges passed the current range. Hence, out of gas loop iteration is out of scope
    - We are not interested in DOS attacks resulting from the MintLimits.
    - We assume that all arrays which an admin sets will not be set so large that the loop results in an `out of gas error`
    - We are aware that if a range is updated the prevRangeClosePrice for subsequent set ranges will be stale.
- *Note: Invalid state paths will be weighed more heavily if they are publically accessible versus if they are only accessible via a permissioned address*

# Testing and Development

## Setup
- Install Node >= 16
- Run `yarn install`
- Install forge
- Copy `.env.example` to a new file `.env` in the root directory of the repo. Keep `FORK_FROM_BLOCK_NUMBER` value the same. Fill in a dummy menmonic and add an RPC URL to populate `MAINNET_RPC_URL`
- Run `yarn init-repo`

## Commands

- Run Tests: `yarn test-forge`

- Generate Gas Report: `yarn test-forge --gas-report`

## Writing Tests and Forge Scripts

For testing with Foundry, `forge-tests/USDY_BasicDeployment.sol` was added to allow for users to easily deploy and setup the USDY dapp.

To setup and write tests for contracts within foundry from a deployed state please include the following layout within your testing file. Helper functions are provided within each of these respective setup files.
```sh
pragma solidity 0.8.16;

import "forge-tests/USDY_BasicDeployment.sol";

contract Test_case_someDescription is USDY_BasicDeployment {
  function testName() public {
    console.log(rUSDYToken.name());
    console.log(rUSDYToken.symbol());
  }
}
```
*Note*:
- Within the foundry tests `address(this)` may be given certain permissioned roles. Please use a freshly generated address when writing POC's related to bypassing access controls.

## VS Code

CTRL+Click in Vs Code may not work due to usage of relative and absolute import paths. 

## Slither

If you feel inclined to run [slither](https://github.com/crytic/slither), the following command will run it on the entire repository. 

```
slither <Relative Path of Contract> --foundry-out-directory artifactsforge
```
eg 
```
slither contracts/bridge/Receiver.sol --foundry-out-directory artifactsforge
```
