# Ondo Finance audit details
- Total Prize Pool: $36,500 USDC 
  - HM awards: $24,750 USDC 
  - Analysis awards: $1,500 USDC 
  - QA awards: $750 USDC 
  - Bot Race awards: $2,250 USDC 
  - Gas awards: $750 USDC 
  - Judge awards: $3,600 USDC 
  - Lookout awards: $2,400 USDC 
  - Scout awards: $500 USDC 
- Join [C4 Discord](https://discord.gg/code4rena) to register
- Submit findings [using the C4 form](https://code4rena.com/contests/2023-09-ondo-finance/submit)
- [Read our guidelines for more details](https://docs.code4rena.com/roles/wardens)
- Starts September 01, 2023 20:00 UTC
- Ends September 07, 2023 20:00 UTC 

## Automated Findings / Publicly Known Issues

Automated findings output for the audit can be found [here](https://github.com/code-423n4/2023-09-ondo/blob/main/bot-report.md) within 24 hours of audit opening.

*Note for C4 wardens: Anything included in the automated findings output is considered a publicly known issue and is ineligible for awards.*

# Overview


# Introduction to rUSDY 
`rUSDY` Is an interest bearing stablecoin, and can be thought of as a rebasing variant of  Ondo's USDY (Ondo U.S. Dollar Yield) token. Individuals who hold USDY are able to wrap their USDY tokens and receive an amount of rUSDY tokens proportional to the USD value wrapped. Each rUSDY token is worth 1 dollar, as USDY accrues value (appreciates in price) rUSDY will rebase accordingly.

In order to determine the current price of USDY, the oracle contract `RWADynamicOracle.sol` is utilized. This contract allows for the price evolution of USDY over a fixed range to be stored on chain and referenced as needed, by the rUSDY contract.

### Background on USDY
The USDY contract is an upgradeable (Transparent Upgradeable Proxy) with transfer restrictions. USDY is not required to abide by the same transfer restrictions as OUSG/OMMF. In order to hold, send and receive USDY. A user will need to add themselves to the [allowlist](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/usdy/allowlist/AllowlistUpgradeable.sol), not be present on the [blocklist](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/usdy/blocklist/Blocklist.sol), and not be on a [sanctionsList](https://etherscan.io/address/0x40C57923924B5c5c5455c48D93317139ADDaC8fb) 

USDY represents tokenized bank deposits. Since deposits at US banks earn interest the redemption price of USDY appreciates as time progresses. Consequently the price of evolution of USDY over time will look like the graph below. Please note that as the yield on these bank deposits change, the slope of the line will also vary to reflect the updated yield. 

![Alt text](https://github.com/code-423n4/2023-09-ondo/blob/main/screenshot.png?raw=true)

[FIG-01]

## [rUSDY](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/usdy/rUSDY.sol)
rUSDY is the rebasing variant of [USDY](https://etherscan.io/address/0x96F6eF951840721AdBF46Ac996b59E0235CB985C) token, and is heavily based on other rebasing tokens such as `stETH`. Users are able to acquire rUSDY tokens by calling the `wrap(uint256)` function on the contract. Where as the price of a single USDY token varies over time, the price of a single rUSDY token is fixed at a price of 1 Dollar, with yield being accrued in the form of additional rUSDY tokens. Similarly when a user wishes to convert their `rUSDY` to `USDY` they are able to call the `unwrap(uint256)` function, and receive their corresponding amount of `USDY`.

In order to determine the USD value of the USDY locked in the contract, rUSDY will call into `RWADynamicRateOracle.sol` in order to fetch the current price.


Because `rUSDY` is the rebasing variant of `USDY` the same transfer restrictions for `USDY` will also be applied to the `rUSDY` token in the `beforeTransfer(address,address,uint256)` hook.

## [RWADynamicRateOracle](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/rwaOracles/RWADynamicOracle.sol)
The RWADynamcRateOracle contract is used to post price evolution for USDY on chain. This contract will accept a [`Range`](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/rwaOracles/RWADynamicOracle.sol#L295) as input from a trusted admin, and will apply the following conversion to the `lastSetPrice` for a given range:

```
currentPrice = (Range.dailyInterestRate ** (Days Elapsed + 1)) * Range.lastSetPrice
```
When plotted as a function of `block.timestamp`, the resulting plot should look identical to that of [FIG-01](#usdy). There is also functionality within the contract that if a range has elapsed and there is no subsequent range set, the oracle will return the maximum price of the previous range for all `block.timestamp` > `Range.end`

It is also important to note that when setting price's outside of the first range, the admin will only specify the `Range.end` and the `Range.dailyInterestRate` as the other parameters are calculated within the contract. 


## [SourceBridge](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/bridge/SourceBridge.sol)
This contract is designed to handle calls into the Axelar Gateway for bridging USDY or an RWA token and is to be deployed on the source chain. The contract will burn the bridging token that it supports and foreward over gas along with a payload to the Axelar gas service and Axelar gateway respectively. You can reference the Axelar documentation for more info [*Axelar Docs*](https://docs.axelar.dev/dev/intro).

## [DestinationBridge](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/bridge/DestinationBridge.sol))
This contract is designed to handle calls from the Axelar Gateway, and is to be deployed on the destination chain. `DestinationBridge.sol` requires that the address which originates the Axelar message passing is registered with the Receiver contract. Once the message has been received via the Axelar gateway it is queued and will be processed once it has the required number of approvals. The number of approvals corresponding to a transaction can vary based on the source chain and the amount being bridged.

This contract also implements a rate limit that will set a ceiling for the amount of tokens which the Receiver contract can mint over some fixed duration of time. 

# Scope

*List all files in scope in the table below (along with hyperlinks) -- and feel free to add notes here to emphasize areas of focus.*

*For line of code counts, we recommend running prettier with a 100-character line length, and using [cloc](https://github.com/AlDanial/cloc).* 

| Contract | SLOC | Purpose | Libraries used |  
| ----------- | ----------- | ----------- | ----------- |
| [contracts/bridge/SourceBridge.sol](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/bridge/SourceBridge.sol) | 89 | This contract serves as the source chain bridge for USDY | OZ Pausable & Ownable; Axelar Address Utils |
| [contracts/bridge/DestinationBridge.sol](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/bridge/DestinationBridge.sol) | 225 | This contract serves as the destination chain bridge for USDY | OZ Pausable & Ownable; Axelar Executable and String Utils |
| [contracts/usdy/rUSDY.sol](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/usdy/rUSDY.sol) | 317 | The rebasing USDY token contract | OZ Upgradeable Contracts |
| [contracts/usdy/rUSDYFactory.sol](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/usdy/rUSDYFactory.sol) | 76 | The rUSDY deployment contract | OZ Proxy | 
| [contracts/rwaOracles/RWADynamicOracle.sol](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/rwaOracles/RWADynamicOracle.sol) | 251 |  This contract is the reference oracle used by rUSDY to get the price of USDY | OZ Access Control & Pausable |
| [contracts/rwaOracles/IRWADynamicOracle.sol](https://github.com/code-423n4/2023-09-ondo/blob/main/contracts/rwaOracles/IRWADynamicOracle.sol) | 4 | Interfaces for IRWADynamicOracle | N/A |

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
