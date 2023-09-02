# Report

## Summary

### Medium Issues

Total **30 instances** over **4 issues**:

|ID|Issue|Instances|
|:--:|:---|:--:|
| [M-1](#m-1-centralization-risk-for-privileged-functions) | Centralization risk for privileged functions | 26 |
| [M-2](#m-2-return-values-of-transfertransferfrom-not-checked) | Return values of `transfer()`/`transferFrom()` not checked | 1 |
| [M-3](#m-3-unsafe-use-of-erc20-transfertransferfrom) | Unsafe use of ERC20 `transfer()`/`transferFrom()` | 1 |
| [M-4](#m-4-the-remaining-eth-may-be-locked-in-the-contract-after-call) | The remaining ETH may be locked in the contract after call | 2 |

### Low Issues

Total **144 instances** over **29 issues**:

|ID|Issue|Instances|
|:--:|:---|:--:|
| [L-1](#l-1-use-ownable2step-instead-of-ownable) | Use Ownable2Step instead of Ownable | 2 |
| [L-2](#l-2-missing-contract-existence-checks-before-low-level-calls) | Missing contract existence checks before low-level calls | 2 |
| [L-3](#l-3-unsafe-solidity-low-level-call-can-cause-gas-grief-attack) | Unsafe solidity low-level call can cause gas grief attack | 2 |
| [L-4](#l-4-initializers-can-be-front-run) | Initializers can be front-run | 1 |
| [L-5](#l-5-external-call-recipient-can-consume-all-remaining-gas) | External call recipient can consume all remaining gas | 2 |
| [L-6](#l-6-missing-storage-gap-for-upgradable-contracts) | Missing storage gap for upgradable contracts | 1 |
| [L-7](#l-7-missing-zero-address-check-in-constructor) | Missing zero address check in constructor | 12 |
| [L-8](#l-8-missing-zero-address-check-in-initializer) | Missing zero address check in initializer | 6 |
| [L-9](#l-9-owner-can-renounce-while-system-is-paused) | Owner can renounce while system is paused | 3 |
| [L-10](#l-10-prevent-re-setting-a-state-variable-with-the-same-value) | prevent re-setting a state variable with the same value | 3 |
| [L-11](#l-11-revert-on-transfer-to-the-zero-address) | Revert on transfer to the zero address | 1 |
| [L-12](#l-12-array-is-pushed-but-not-poped) | Array is `push()`ed but not `pop()`ed | 5 |
| [L-13](#l-13-code-does-not-follow-the-best-practice-of-check-effects-interaction) | Code does not follow the best practice of check-effects-interaction | 2 |
| [L-14](#l-14-upgradeable-contract-not-initialized) | Upgradeable contract not initialized | 8 |
| [L-15](#l-15-enum-values-should-be-used-instead-of-constant-array-indexes) | Enum values should be used instead of constant array indexes | 2 |
| [L-16](#l-16-vulnerable-versions-of-packages-are-being-used) | Vulnerable versions of packages are being used | 2 |
| [L-17](#l-17-governance-functions-should-be-controlled-by-time-locks) | Governance functions should be controlled by time locks | 26 |
| [L-18](#l-18-missing-checks-for-address0-when-setting-address-state-variables) | Missing checks for `address(0)` when setting address state variables | 10 |
| [L-19](#l-19-division-by-zero-not-prevented) | Division by zero not prevented | 4 |
| [L-20](#l-20-loss-of-precision-in-divisions) | Loss of precision in divisions | 12 |
| [L-21](#l-21-owner-can-renounce-ownership) | Owner can renounce Ownership | 2 |
| [L-22](#l-22-some-tokens-may-revert-when-large-transfers-are-made) | Some tokens may revert when large transfers are made | 1 |
| [L-23](#l-23-some-tokens-may-revert-when-zero-value-transfers-are-made) | Some tokens may revert when zero value transfers are made | 1 |
| [L-24](#l-24-consider-implementing-two-step-procedure-for-updating-protocol-addresses) | Consider implementing two-step procedure for updating protocol addresses | 5 |
| [L-25](#l-25-using-zero-as-a-parameter) | Using zero as a parameter | 2 |
| [L-26](#l-26-constructor--initialization-function-lacks-parameter-validation) | Constructor / initialization function lacks parameter validation | 20 |
| [L-27](#l-27-external-function-calls-within-loops) | External function calls within loops | 2 |
| [L-28](#l-28-functions-calling-contractsaddresses-with-transfer-hooks-should-be-protected-by-reentrancy-guard) | Functions calling contracts/addresses with transfer hooks should be protected by reentrancy guard | 1 |
| [L-29](#l-29-timestamp-may-be-manipulation) | Timestamp may be manipulation | 4 |

### Non Critical Issues

Total **658 instances** over **70 issues**:

|ID|Issue|Instances|
|:--:|:---|:--:|
| [N-1](#n-1-consider-moving-msgsender-checks-to-modifiers) | Consider moving `msg.sender` checks to `modifier`s | 5 |
| [N-2](#n-2-custom-errors-has-no-error-details) | Custom errors has no error details | 15 |
| [N-3](#n-3-import-declarations-should-import-specific-identifiers-rather-than-the-whole-file) | Import declarations should import specific identifiers, rather than the whole file | 32 |
| [N-4](#n-4-too-long-functions-should-be-refactored) | Too long functions should be refactored | 2 |
| [N-5](#n-5-there-is-no-need-to-initialize-variables-with-0) | There is no need to initialize variables with 0 | 9 |
| [N-6](#n-6-redundant-inheritance-specifier) | Redundant inheritance specifier | 3 |
| [N-7](#n-7-variables-should-be-named-in-mixedcase-style) | Variables should be named in mixedCase style | 7 |
| [N-8](#n-8-names-of-structs-events-enums-and-errors-should-use-capwords-style) | Names of structs, events, enums and errors should use CapWords style | 1 |
| [N-9](#n-9-names-of-privateinternal-functions-should-be-prefixed-with-an-underscore) | Names of `private`/`internal` functions should be prefixed with an underscore | 2 |
| [N-10](#n-10-names-of-privateinternal-state-variables-should-be-prefixed-with-an-underscore) | Names of `private`/`internal` state variables should be prefixed with an underscore | 5 |
| [N-11](#n-11-order-of-functions-does-not-follow-the-solidity-style-guide) | Order of functions does not follow the Solidity Style Guide | 33 |
| [N-12](#n-12-use-of-override-is-unnecessary) | Use of `override` is unnecessary | 5 |
| [N-13](#n-13-unused-errors) | Unused errors | 2 |
| [N-14](#n-14-custom-errors-should-be-used-rather-than-revertrequire) | Custom errors should be used rather than `revert()`/`require()` | 25 |
| [N-15](#n-15-assertshould-be-replaced-with-require-or-revert) | `assert()` should be replaced with `require()` or `revert()` | 1 |
| [N-16](#n-16-constantsimmutables-redefined-elsewhere) | Constants/Immutables redefined elsewhere | 8 |
| [N-17](#n-17-events-should-be-emitted-before-external-calls) | Events should be emitted before external calls | 6 |
| [N-18](#n-18-requirerevertstatements-should-have-descriptive-reason-strings) | `require()` / `revert()` statements should have descriptive reason strings | 1 |
| [N-19](#n-19-event-is-missing-indexed-fields) | Event is missing `indexed` fields | 9 |
| [N-20](#n-20-common-functions-should-be-refactored-to-a-common-base-contract) | Common functions should be refactored to a common base contract | 4 |
| [N-21](#n-21-imports-could-be-organized-more-systematically) | Imports could be organized more systematically | 3 |
| [N-22](#n-22-magic-numbers-should-be-replaced-with-constants) | Magic numbers should be replaced with constants | 8 |
| [N-23](#n-23-expressions-for-constant-values-should-use-immutable-rather-than-constant) | Expressions for constant values should use `immutable` rather than `constant` | 8 |
| [N-24](#n-24-public-functions-not-called-internally-should-be-declared-external) | Public functions not called internally should be declared `external` | 15 |
| [N-25](#n-25-natspec-documentation-for-contract-is-missing) | NatSpec documentation for contract is missing | 4 |
| [N-26](#n-26-contract-declarations-should-have-natspec-author-annotations) | Contract declarations should have NatSpec `@author` annotations | 5 |
| [N-27](#n-27-contract-declarations-should-have-natspec-title-annotations) | Contract declarations should have NatSpec `@title` annotations | 4 |
| [N-28](#n-28-natspec-documentation-for-function-is-missing) | NatSpec documentation for function is missing | 11 |
| [N-29](#n-29-missing-natspec-param) | Missing NatSpec `@param` | 73 |
| [N-30](#n-30-public-variable-declarations-should-have-natspec-descriptions) | Public variable declarations should have NatSpec descriptions | 20 |
| [N-31](#n-31-natspec-return-is-missing) | NatSpec `@return` is missing | 15 |
| [N-32](#n-32-contract-uses-both-requirerevert-as-well-as-custom-errors) | Contract uses both `require()`/`revert()` as well as custom errors | 3 |
| [N-33](#n-33-non-assembly-method-available) | Non-assembly method available | 4 |
| [N-34](#n-34-the-override-keyword-should-not-be-omitted) | The `override` keyword should not be omitted | 10 |
| [N-35](#n-35-missing-zero-address-check-in-functions-with-address-parameters) | Missing zero address check in functions with address parameters | 55 |
| [N-36](#n-36-contract-functions-should-use-an-interface) | Contract functions should use an `interface` | 36 |
| [N-37](#n-37-constants-should-be-put-on-the-left-side-of-comparisons) | Constants should be put on the left side of comparisons | 18 |
| [N-38](#n-38-put-all-system-wide-constants-in-one-file) | Put all system-wide constants in one file | 12 |
| [N-39](#n-39-else-block-not-required) | `else`-block not required | 3 |
| [N-40](#n-40-use-scientific-notation-eg-1e18-rather-than-exponentiation-eg-1018) | Use scientific notation (e.g. `1e18`) rather than exponentiation (e.g. `10**18`) | 1 |
| [N-41](#n-41-large-multiples-of-ten-should-use-scientific-notation) | Large multiples of ten should use scientific notation | 1 |
| [N-42](#n-42-spdx-identifier-should-be-the-in-the-first-line-of-a-solidity-file) | SPDX identifier should be the in the first line of a solidity file | 1 |
| [N-43](#n-43-control-structures-do-not-follow-the-solidity-style-guide) | Control structures do not follow the Solidity Style Guide | 11 |
| [N-44](#n-44-contract-name-does-not-follow-the-solidity-style-guide) | Contract name does not follow the Solidity Style Guide | 2 |
| [N-45](#n-45-functions-and-modifiers-should-be-named-in-mixedcase-style) | Functions and modifiers should be named in mixedCase style | 3 |
| [N-46](#n-46-variable-names-for-immutables-should-use-upper_case_with_underscores) | Variable names for `immutable`s should use UPPER_CASE_WITH_UNDERSCORES | 1 |
| [N-47](#n-47-order-of-contract-layout-does-not-follow-the-solidity-style-guide) | Order of contract layout does not follow the Solidity Style Guide | 7 |
| [N-48](#n-48-whitespace-in-expressions) | Whitespace in Expressions | 40 |
| [N-49](#n-49-high-cyclomatic-complexity) | High cyclomatic complexity | 1 |
| [N-50](#n-50-typos) | Typos | 6 |
| [N-51](#n-51-consider-bounding-input-array-length) | Consider bounding input array length | 3 |
| [N-52](#n-52-unused-contract-variables) | Unused contract variables | 2 |
| [N-53](#n-53-unused-named-return) | Unused named return | 3 |
| [N-54](#n-54-named-mappings-are-recommended) | Named mappings are recommended | 11 |
| [N-55](#n-55-events-that-mark-critical-parameter-changes-should-contain-both-the-old-and-the-new-value) | Events that mark critical parameter changes should contain both the old and the new value | 4 |
| [N-56](#n-56-emitting-storage-values-instead-of-the-memory-one) | Emitting storage values instead of the memory one | 4 |
| [N-57](#n-57-error-messages-should-descriptive-rather-that-cryptic) | Error messages should descriptive, rather that cryptic | 2 |
| [N-58](#n-58-events-are-emitted-without-the-sender-information) | Events are emitted without the sender information | 12 |
| [N-59](#n-59-state-variables-should-include-comments) | State variables should include comments | 17 |
| [N-60](#n-60-missing-events-in-sensitive-functions) | Missing events in sensitive functions | 1 |
| [N-61](#n-61-modifier-declarations-should-have-natspec-descriptions) | Modifier declarations should have NatSpec descriptions | 1 |
| [N-62](#n-62-empty-bytes-check-is-missing) | Empty bytes check is missing | 2 |
| [N-63](#n-63-use-the-latest-solidity-version-for-deployment) | Use the latest solidity version for deployment | 6 |
| [N-64](#n-64-avoid-the-use-of-sensitive-terms) | Avoid the use of sensitive terms | 4 |
| [N-65](#n-65-consider-adding-a-blockdeny-list) | Consider adding a block/deny-list | 5 |
| [N-66](#n-66-enable-ir-based-code-generation) | Enable IR-based code generation | 1 |
| [N-67](#n-67-contracts-should-have-full-test-coverage) | Contracts should have full test coverage | 1 |
| [N-68](#n-68-large-or-complicated-code-bases-should-implement-invariant-tests) | Large or complicated code bases should implement invariant tests | 1 |
| [N-69](#n-69-top-level-declarations-should-be-separated-by-at-least-two-lines) | Top-level declarations should be separated by at least two lines | 16 |
| [N-70](#n-70-consider-adding-formal-verification-proofs) | Consider adding formal verification proofs | 6 |

### Gas Optimizations

Total **284 instances** over **41 issues**with **120747** gas saved:

|ID|Issue|Instances|Gas|
|:--:|:---|:--:|:--:|
| [G-1](#g-1-use-storage-instead-of-memory-for-structsarrays) | Use `storage` instead of `memory` for structs/arrays | 6 | 25200 |
| [G-2](#g-2-the-arraylength-should-be-cached-outside-of-the-for-loop) | The `<array>.length` should be cached outside of the `for`-loop | 5 | 15 |
| [G-3](#g-3-using-private-for-constants-saves-gas) | Using `private` for constants saves gas | 12 | 40872 |
| [G-4](#g-4-constructors-can-be-marked-as-payable-to-save-deployment-gas) | Constructors can be marked as payable to save deployment gas | 5 | 105 |
| [G-5](#g-5-unused-named-return-variables-without-optimizer-waste-gas) | Unused named return variables without optimizer waste gas | 3 | 27 |
| [G-6](#g-6-use-custom-errors-rather-than-revertrequire-strings-to-save-gas) | Use custom errors rather than `revert()`/`require()` strings to save gas | 24 | 1200 |
| [G-7](#g-7-use-unchecked-block-for-safe-subtractions) | Use `unchecked` block for safe subtractions | 5 | 425 |
| [G-8](#g-8-operator--costs-more-gas-than-x--x--y-for-state-variables) | Operator `+=` costs more gas than `<x> = <x> + <y>` for state variables | 2 | 226 |
| [G-9](#g-9-avoid-updating-storage-when-the-value-hasnt-changed) | Avoid updating storage when the value hasn't changed | 6 | 4800 |
| [G-10](#g-10-using-bools-for-storage-incurs-overhead) | Using `bool`s for storage incurs overhead | 2 | 34200 |
| [G-11](#g-11-multiple-accesses-of-the-same-mappingarray-keyindex-should-be-cached) | Multiple accesses of the same mapping/array key/index should be cached | 17 | 714 |
| [G-12](#g-12-state-variables-that-are-used-multiple-times-in-a-function-should-be-cached-in-stack-variables) | State variables that are used multiple times in a function should be cached in stack variables | 28 | 2716 |
| [G-13](#g-13-internal-functions-only-called-once-can-be-inlined-to-save-gas) | `internal` functions only called once can be inlined to save gas | 9 | 270 |
| [G-14](#g-14-private-functions-only-used-once-can-be-inlined-to-save-gas) | Private functions only used once can be inlined to save gas | 1 | 30 |
| [G-15](#g-15-unlimited-gas-consumption-risk-due-to-external-call-recipients) | Unlimited gas consumption risk due to external call recipients | 2 | - |
| [G-16](#g-16-initializers-can-be-marked-as-payable-to-save-deployment-gas) | Initializers can be marked as payable to save deployment gas | 1 | 21 |
| [G-17](#g-17-functions-that-revert-when-called-by-normal-users-can-be-marked-payable) | Functions that revert when called by normal users can be marked `payable` | 24 | 504 |
| [G-18](#g-18-arrayindex--amount-is-cheaper-than-arrayindex--arrayindex--amount-or-related-variants) | `array[index] += amount` is cheaper than `array[index] = array[index] + amount` (or related variants) | 2 | 76 |
| [G-19](#g-19-operator--costs-less-gas-than-operator-) | Operator `>=`/`<=` costs less gas than operator `>`/`<` | 5 | 15 |
| [G-20](#g-20-reduce-gas-usage-by-moving-to-solidity-0819-or-later) | Reduce gas usage by moving to Solidity 0.8.19 or later | 6 | 6000 |
| [G-21](#g-21-using-a-double-if-statement-instead-of-a-logical-and) | Using a double `if` statement instead of a logical AND(`&&`) | 2 | 60 |
| [G-22](#g-22-requirerevert-strings-longer-than-32-bytes-cost-extra-gas) | `require()`/`revert()` strings longer than 32 bytes cost extra gas | 8 | 24 |
| [G-23](#g-23-divisions-can-be-unchecked-to-save-gas) | Divisions can be unchecked to save gas | 12 | 240 |
| [G-24](#g-24-increments-can-be-unchecked-to-save-gas) | Increments can be `unchecked` to save gas | 8 | 480 |
| [G-25](#g-25-using-assembly-to-check-for-zero-can-save-gas) | Using assembly to check for zero can save gas | 15 | 90 |
| [G-26](#g-26-use-assembly-to-emit-events) | Use assembly to emit events | 14 | 532 |
| [G-27](#g-27-use-assembly-to-compute-hashes-to-save-gas) | Use assembly to compute hashes to save gas | 3 | 240 |
| [G-28](#g-28-low-level-call-can-be-optimized-with-assembly) | Low level `call` can be optimized with assembly | 2 | 496 |
| [G-29](#g-29-use-assembly-to-write-addresscontract-type-storage-values) | Use `assembly` to write address/contract type storage values | 6 | 300 |
| [G-30](#g-30-use-calldata-instead-of-memory-for-immutable-arguments) | Use `calldata` instead of `memory` for immutable arguments | 1 | 300 |
| [G-31](#g-31-newer-versions-of-solidity-are-more-gas-efficient) | Newer versions of solidity are more gas efficient | 6 | - |
| [G-32](#g-32-dont-transfer-with-zero-amount-to-save-gas) | Don't transfer with zero amount to save gas | 1 | - |
| [G-33](#g-33-it-costs-more-gas-to-initialize-non-constantnon-immutable-state-variables-to-zero-than-to-let-the-default-of-zero-be-applied) | It costs more gas to initialize non-`constant`/non-`immutable` state variables to zero than to let the default of zero be applied | 9 | - |
| [G-34](#g-34-usage-of-intsuints-smaller-than-32-bytes-incurs-overhead) | Usage of `int`s/`uint`s smaller than 32 bytes incurs overhead | 1 | 55 |
| [G-35](#g-35-multiple-mappings-can-be-replaced-with-a-single-struct-mapping) | Multiple mappings can be replaced with a single struct mapping | 7 | 294 |
| [G-36](#g-36-multiple-mappings-with-same-keys-can-be-combined-into-a-single-struct-mapping-for-readability) | Multiple mappings with same keys can be combined into a single struct mapping for readability | 7 | - |
| [G-37](#g-37-optimize-names-to-save-gas) | Optimize names to save gas | 5 | 110 |
| [G-38](#g-38-using-bitmap-to-store-bool-states-can-save-gas) | Using bitmap to store bool states can save gas | 2 | - |
| [G-39](#g-39-consider-activating-via-ir-for-deploying) | Consider activating via-ir for deploying | 6 | - |
| [G-40](#g-40-use--0-or--0-for-unsigned-integer-comparison) | Use `!= 0` or `== 0` for unsigned integer comparison | 3 | 12 |
| [G-41](#g-41-the-result-of-a-function-call-should-be-cached-rather-than-re-calling-the-function) | The result of a function call should be cached rather than re-calling the function | 1 | 100 |

## Medium Issues

### <a name="M-1"></a>[M-1] Centralization risk for privileged functions

Contracts with privileged functions need owner/admin to be trusted not to perform malicious updates or drain funds. This may also cause a single point failure.

<details>
<summary>There are 26 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L210](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L210), [#L220](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L220), [#L234-L237](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L234-L237), [#L255-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L255-L259), [#L286](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L286), [#L295](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L295), [#L304](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L304), [#L313](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L313), [#L322](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L322) ):

```solidity
210:   function addApprover(address approver) external onlyOwner {

220:   function removeApprover(address approver) external onlyOwner {

234:   function addChainSupport(
235:     string calldata srcChain,
236:     string calldata srcContractAddress
237:   ) external onlyOwner {

255:   function setThresholds(
256:     string calldata srcChain,
257:     uint256[] calldata amounts,
258:     uint256[] calldata numOfApprovers
259:   ) external onlyOwner {

286:   function setMintLimit(uint256 mintLimit) external onlyOwner {

295:   function setMintLimitDuration(uint256 mintDuration) external onlyOwner {

304:   function pause() external onlyOwner {

313:   function unpause() external onlyOwner {

322:   function rescueTokens(address _token) external onlyOwner {
```

- *SourceBridge.sol* ( [#L121-L124](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L121-L124), [#L136](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L136), [#L145](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L145), [#L160-L162](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L160-L162) ):

```solidity
121:   function setDestinationChainContractAddress(
122:     string memory destinationChain,
123:     address contractAddress
124:   ) external onlyOwner {

136:   function pause() external onlyOwner {

145:   function unpause() external onlyOwner {

160:   function multiexcall(
161:     ExCallData[] calldata exCallData
162:   ) external payable override onlyOwner returns (bytes[] memory results) {
```

- *RWADynamicOracle.sol* ( [#L151-L154](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L151-L154), [#L186-L192](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L186-L192), [#L241](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L241), [#L248](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L248) ):

```solidity
151:   function setRange(
152:     uint256 endTimestamp,
153:     uint256 dailyInterestRate
154:   ) external onlyRole(SETTER_ROLE) {

186:   function overrideRange(
187:     uint256 indexToModify,
188:     uint256 newStart,
189:     uint256 newEnd,
190:     uint256 newDailyIR,
191:     uint256 newPrevRangeClosePrice
192:   ) external onlyRole(DEFAULT_ADMIN_ROLE) {

241:   function pauseOracle() external onlyRole(PAUSER_ROLE) {

248:   function unpauseOracle() external onlyRole(DEFAULT_ADMIN_ROLE) {
```

- *rUSDY.sol* ( [#L662](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L662), [#L672-L675](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L672-L675), [#L685](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L685), [#L689](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L689), [#L698-L700](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L698-L700), [#L709-L711](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L709-L711), [#L720-L722](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L720-L722) ):

```solidity
662:   function setOracle(address _oracle) external onlyRole(USDY_MANAGER_ROLE) {

672:   function burn(
673:     address _account,
674:     uint256 _amount
675:   ) external onlyRole(BURNER_ROLE) {

685:   function pause() external onlyRole(PAUSER_ROLE) {

689:   function unpause() external onlyRole(USDY_MANAGER_ROLE) {

698:   function setBlocklist(
699:     address blocklist
700:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

709:   function setAllowlist(
710:     address allowlist
711:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

720:   function setSanctionsList(
721:     address sanctionsList
722:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {
```

- *rUSDYFactory.sol* ( [#L75-L81](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L75-L81), [#L126-L128](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L126-L128) ):

```solidity
75:   function deployrUSDY(
76:     address blocklist,
77:     address allowlist,
78:     address sanctionsList,
79:     address usdy,
80:     address oracle
81:   ) external onlyGuardian returns (address, address, address) {

126:   function multiexcall(
127:     ExCallData[] calldata exCallData
128:   ) external payable override onlyGuardian returns (bytes[] memory results) {
```

</details>

### <a name="M-2"></a>[M-2] Return values of `transfer()`/`transferFrom()` not checked

Not all ERC20 implementations `revert()` when there's a failure in `transfer()` or `transferFrom()`. The function signature has a boolean return value and they indicate errors that way instead. By not checking the return value, operations that should have marked as failed, may potentially go through without actually transfer anything.

There is 1 instance:

- *DestinationBridge.sol* ( [#L324](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L324) ):

```solidity
324:     IRWALike(_token).transfer(owner(), balance);
```

### <a name="M-3"></a>[M-3] Unsafe use of ERC20 `transfer()`/`transferFrom()`

Some tokens do not implement the ERC20 standard properly. For example Tether (USDT)'s `transfer()` and `transferFrom()` functions do not return booleans as the ERC20 specification requires, and instead have no return value. When these sorts of tokens are cast to IERC20/ERC20, their function signatures do not match and therefore the calls made will revert.
It is recommended to use the [`SafeERC20`](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/f347b410cf6aeeaaf5197e1fece139c793c03b2b/contracts/token/ERC20/utils/SafeERC20.sol#L19)'s `safeTransfer()` and `safeTransferFrom()` from OpenZeppelin instead.

There is 1 instance:

- *DestinationBridge.sol* ( [#L324](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L324) ):

```solidity
324:     IRWALike(_token).transfer(owner(), balance);
```

### <a name="M-4"></a>[M-4] The remaining ETH may be locked in the contract after call

After calling an external contract and forwards some ETH value, the contract balance should be checked. If there is excess eth left over due to a failed call, or more eth being delivered than needed, or any other reason, this eth must be refunded to the user or handled appropriately, otherwise the eth may be frozen in the contract forever.

There are 2 instances:

- *SourceBridge.sol* ( [#L165-L167](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L165-L167) ):

```solidity
/// @audit multiexcall()
165:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
166:         value: exCallData[i].value
167:       }(exCallData[i].data);
```

- *rUSDYFactory.sol* ( [#L131-L133](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L131-L133) ):

```solidity
/// @audit multiexcall()
131:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
132:         value: exCallData[i].value
133:       }(exCallData[i].data);
```

## Low Issues

### <a name="L-1"></a>[L-1] Use Ownable2Step instead of Ownable

[`Ownable2Step`](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/3d7a93876a2e5e1d7fe29b5a0e96e222afdc4cfa/contracts/access/Ownable2Step.sol#L31-L56) and [`Ownable2StepUpgradeable`](https://github.com/OpenZeppelin/openzeppelin-contracts-upgradeable/blob/25aabd286e002a1526c345c8db259d57bdf0ad28/contracts/access/Ownable2StepUpgradeable.sol#L47-L63) prevent the contract ownership from mistakenly being transferred to an address that cannot handle it (e.g. due to a typo in the address), by requiring that the recipient of the owner permissions actively accept via a contract call of its own.

There are 2 instances:

- *DestinationBridge.sol* ( [#L27-L30](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L27-L30) ):

```solidity
27: contract DestinationBridge is
28:   AxelarExecutable,
29:   MintTimeBasedRateLimiter,
30:   Ownable,
```

- *SourceBridge.sol* ( [#L11](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L11) ):

```solidity
11: contract SourceBridge is Ownable, Pausable, IMulticall {
```

### <a name="L-2"></a>[L-2] Missing contract existence checks before low-level calls

Low-level calls return success if there is no code present at the specified address. In addition to the zero-address checks, add a check to verify that `<address>.code.length > 0`.

There are 2 instances:

- *SourceBridge.sol* ( [#L165](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L165) ):

```solidity
165:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
```

- *rUSDYFactory.sol* ( [#L131](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L131) ):

```solidity
131:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
```

### <a name="L-3"></a>[L-3] Unsafe solidity low-level call can cause gas grief attack

Using the low-level calls of a solidity address can leave the contract open to gas grief attacks. These attacks occur when the called contract returns a large amount of data.
So when calling an external contract, it is necessary to check the length of the return data before reading/copying it (using `returndatasize()`).

There are 2 instances:

- *SourceBridge.sol* ( [#L165](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L165) ):

```solidity
165:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
```

- *rUSDYFactory.sol* ( [#L131](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L131) ):

```solidity
131:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
```

### <a name="L-4"></a>[L-4] Initializers can be front-run

Initializers could be front-run, allowing an attacker to either set their own values, take ownership of the contract, and in the best case forcing a re-deployment.

There is 1 instance:

- *rUSDY.sol* ( [#L109](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L109) ):

```solidity
109:   function initialize(
```

### <a name="L-5"></a>[L-5] External call recipient can consume all remaining gas

There is no limit specified on the amount of gas used, so the recipient can use up all of the remaining gas(`gasleft()`), causing it to revert. Therefore, when calling an external contract, it is necessary to specify a limited amount of gas to forward.

There are 2 instances:

- *SourceBridge.sol* ( [#L165](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L165) ):

```solidity
165:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
```

- *rUSDYFactory.sol* ( [#L131](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L131) ):

```solidity
131:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
```

### <a name="L-6"></a>[L-6] Missing storage gap for upgradable contracts

Each upgradable contract should include a state variable (usually named `__gap`) to provide reserved space in storage. This allows the team to freely add new state variables in the future upgrades without compromising the storage compatibility with existing deployments.

There is 1 instance:

- *rUSDY.sol* ( [#L57-L66](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L57-L66) ):

```solidity
57: contract rUSDY is
58:   Initializable,
59:   ContextUpgradeable,
60:   PausableUpgradeable,
61:   AccessControlEnumerableUpgradeable,
62:   BlocklistClientUpgradeable,
63:   AllowlistClientUpgradeable,
64:   SanctionsListClientUpgradeable,
65:   IERC20Upgradeable,
66:   IERC20MetadataUpgradeable
```

### <a name="L-7"></a>[L-7] Missing zero address check in constructor

Constructors often take address parameters to initialize important components of a contract, such as owner or linked contracts. However, without a checking, there's a risk that an address parameter could be mistakenly set to the zero address (0x0). This could be due to an error or oversight during contract deployment. A zero address in a crucial role can cause serious issues, as it cannot perform actions like a normal address, and any funds sent to it will be irretrievable. It's therefore crucial to include a zero address check in constructors to prevent such potential problems. If a zero address is detected, the constructor should revert the transaction.

There are 12 instances:

- *DestinationBridge.sol* ( [#L55-L63](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L55-L63) ):

```solidity
/// @audit `_token not checked`
/// @audit `_allowlist not checked`
/// @audit `_ondoApprover not checked`
/// @audit `_owner not checked`
55:   constructor(
56:     address _token,
57:     address _axelarGateway,
58:     address _allowlist,
59:     address _ondoApprover,
60:     address _owner,
61:     uint256 _mintLimit,
62:     uint256 _mintDuration
63:   )
```

- *SourceBridge.sol* ( [#L40-L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L40-L45) ):

```solidity
/// @audit `_token not checked`
/// @audit `_axelarGateway not checked`
/// @audit `_gasService not checked`
/// @audit `owner not checked`
40:   constructor(
41:     address _token,
42:     address _axelarGateway,
43:     address _gasService,
44:     address owner
45:   ) {
```

- *RWADynamicOracle.sol* ( [#L30-L38](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L30-L38) ):

```solidity
/// @audit `admin not checked`
/// @audit `setter not checked`
/// @audit `pauser not checked`
30:   constructor(
31:     address admin,
32:     address setter,
33:     address pauser,
34:     uint256 firstRangeStart,
35:     uint256 firstRangeEnd,
36:     uint256 dailyIR,
37:     uint256 startPrice
38:   ) {
```

- *rUSDYFactory.sol* ( [#L51](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L51) ):

```solidity
/// @audit `_guardian not checked`
51:   constructor(address _guardian) {
```

### <a name="L-8"></a>[L-8] Missing zero address check in initializer

There are 6 instances:

- *rUSDY.sol* ( [#L109-L116](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L109-L116) ):

```solidity
/// @audit `blocklist not checked`
/// @audit `allowlist not checked`
/// @audit `sanctionsList not checked`
/// @audit `_usdy not checked`
/// @audit `guardian not checked`
/// @audit `_oracle not checked`
109:   function initialize(
110:     address blocklist,
111:     address allowlist,
112:     address sanctionsList,
113:     address _usdy,
114:     address guardian,
115:     address _oracle
116:   ) public virtual initializer {
```

### <a name="L-9"></a>[L-9] Owner can renounce while system is paused

The contract owner or single user with a role is not prevented from renouncing the role/ownership while the contract is paused, which would cause any user assets stored in the protocol, to be locked indefinitely.

There are 3 instances:

- *DestinationBridge.sol* ( [#L304-L306](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L304-L306) ):

```solidity
304:   function pause() external onlyOwner {
305:     _pause();
306:   }
```

- *SourceBridge.sol* ( [#L136-L138](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L136-L138) ):

```solidity
136:   function pause() external onlyOwner {
137:     _pause();
138:   }
```

- *rUSDY.sol* ( [#L685-L687](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L685-L687) ):

```solidity
685:   function pause() external onlyRole(PAUSER_ROLE) {
686:     _pause();
687:   }
```

### <a name="L-10"></a>[L-10] prevent re-setting a state variable with the same value

Not only is wasteful in terms of gas, but this is especially problematic when an event is emitted and the old and new values set are the same, as listeners might not expect this kind of scenario.

There are 3 instances:

- *rUSDY.sol* ( [#L139](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L139), [#L140](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L140), [#L663](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L663) ):

```solidity
139:     usdy = IUSDY(_usdy);

140:     oracle = IRWADynamicOracle(_oracle);

663:     oracle = IRWADynamicOracle(_oracle);
```

### <a name="L-11"></a>[L-11] Revert on transfer to the zero address

It's good practice to revert a token transfer transaction if the recipient's address is the zero address. This can prevent unintentional transfers to the zero address due to accidental operations or programming errors. Many token contracts implement such a safeguard, such as [OpenZeppelin - ERC20](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/9e3f4d60c581010c4a3979480e07cc7752f124cc/contracts/token/ERC20/ERC20.sol#L232), [OpenZeppelin - ERC721](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/9e3f4d60c581010c4a3979480e07cc7752f124cc/contracts/token/ERC721/ERC721.sol#L142).

There is 1 instance:

- *DestinationBridge.sol* ( [#L324](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L324) ):

```solidity
324:     IRWALike(_token).transfer(owner(), balance);
```

### <a name="L-12"></a>[L-12] Array is `push()`ed but not `pop()`ed

Array entries are added but are never removed. Consider whether this should be the case, or whether there should be a maximum, or whether old entries should be removed. Cases where there are specific potential problems will be flagged separately under a different issue.

There are 5 instances:

- *DestinationBridge.sol* ( [#L166](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L166), [#L266-L268](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L266-L268), [#L273-L275](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L273-L275) ):

```solidity
166:     t.approvers.push(msg.sender);

266:         chainToThresholds[srcChain].push(
267:           Threshold(amounts[i], numOfApprovers[i])
268:         );

273:         chainToThresholds[srcChain].push(
274:           Threshold(amounts[i], numOfApprovers[i])
275:         );
```

- *RWADynamicOracle.sol* ( [#L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L45), [#L161-L163](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L161-L163) ):

```solidity
45:     ranges.push(Range(firstRangeStart, firstRangeEnd, dailyIR, trueStart));

161:     ranges.push(
162:       Range(lastRange.end, endTimestamp, dailyInterestRate, prevClosePrice)
163:     );
```

### <a name="L-13"></a>[L-13] Code does not follow the best practice of check-effects-interaction

Code should follow the best-practice of [check-effects-interaction](https://blockchain-academy.hs-mittweida.de/courses/solidity-coding-beginners-to-intermediate/lessons/solidity-11-coding-patterns/topic/checks-effects-interactions/), where state variables are updated before any external calls are made. Doing so prevents a large class of reentrancy bugs.

There are 2 instances:

- *DestinationBridge.sol* ( [#L350](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L350) ):

```solidity
/// @audit setAccountStatus() is called before this
350:       delete txnHashToTransaction[txnHash];
```

- *SourceBridge.sol* ( [#L79](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L79) ):

```solidity
/// @audit burnFrom() is called before this
79:     bytes memory payload = abi.encode(VERSION, msg.sender, amount, nonce++);
```

### <a name="L-14"></a>[L-14] Upgradeable contract not initialized

Upgradeable contracts are initialized via an initializer function rather than by a constructor. Leaving such a contract uninitialized may lead to it being taken over by a malicious user.

There are 8 instances:

- *rUSDY.sol* ( [#L57-L66](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L57-L66) ):

```solidity
/// @audit __Context_init()
/// @audit __Pausable_init()
/// @audit __AccessControlEnumerable_init()
/// @audit __BlocklistClient_init()
/// @audit __AllowlistClient_init()
/// @audit __SanctionsListClient_init()
/// @audit __IERC20_init()
/// @audit __IERC20Metadata_init()
57: contract rUSDY is
58:   Initializable,
59:   ContextUpgradeable,
60:   PausableUpgradeable,
61:   AccessControlEnumerableUpgradeable,
62:   BlocklistClientUpgradeable,
63:   AllowlistClientUpgradeable,
64:   SanctionsListClientUpgradeable,
65:   IERC20Upgradeable,
66:   IERC20MetadataUpgradeable
```

### <a name="L-15"></a>[L-15] Enum values should be used instead of constant array indexes

Create a commented enum value to use instead of constant array indexes, this makes the code far easier to understand.

There are 2 instances:

- *DestinationBridge.sol* ( [#L345](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L345) ):

```solidity
345:           ALLOWLIST.getValidTermIndexes()[0],
```

- *RWADynamicOracle.sol* ( [#L116](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L116) ):

```solidity
116:     if (startTime == ranges[0].start) {
```

### <a name="L-16"></a>[L-16] Vulnerable versions of packages are being used

This project is using specific package versions which are vulnerable to the specific CVEs listed below. Consider switching to more recent versions of these packages that don't have these vulnerabilities.

- [CVE-2023-40014](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-40014) - **MEDIUM** - (`@openzeppelin/contracts >=4.0.0 <4.9.3`): OpenZeppelin Contracts is a library for secure smart contract development. Starting in version 4.0.0 and prior to version 4.9.3, contracts using `ERC2771Context` along with a custom trusted forwarder may see `_msgSender` return `address(0)` in calls that originate from the forwarder with calldata shorter than 20 bytes. This combination of circumstances does not appear to be common, in particular it is not the case for `MinimalForwarder` from OpenZeppelin Contracts, or any deployed forwarder the team is aware of, given that the signer address is appended to all calls that originate from these forwarders. The problem has been patched in v4.9.3.

- [CVE-2023-34459](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2023-34459) - **MEDIUM** - (`@openzeppelin/contracts >=4.7.0 <4.9.2`): OpenZeppelin Contracts is a library for smart contract development. Starting in version 4.7.0 and prior to version 4.9.2, when the `verifyMultiProof`, `verifyMultiProofCalldata`, `procesprocessMultiProof`, or `processMultiProofCalldat` functions are in use, it is possible to construct merkle trees that allow forging a valid multiproof for an arbitrary set of leaves. A contract may be vulnerable if it uses multiproofs for verification and the merkle tree that is processed includes a node with value 0 at depth 1 (just under the root). This could happen inadvertedly for balanced trees with 3 leaves or less, if the leaves are not hashed. This could happen deliberately if a malicious tree builder includes such a node in the tree. A contract is not vulnerable if it uses single-leaf proving (`verify`, `verifyCalldata`, `processProof`, or `processProofCalldata`), or if it uses multiproofs with a known tree that has hashed leaves. Standard merkle trees produced or validated with the @openzeppelin/merkle-tree library are safe. The problem has been patched in version 4.9.2. Some workarounds are available. For those using multiproofs: When constructing merkle trees hash the leaves and do not insert empty nodes in your trees. Using the @openzeppelin/merkle-tree package eliminates this issue. Do not accept user-provided merkle roots without reconstructing at least the first level of the tree. Verify the merkle tree structure by reconstructing it from the leaves.

There are 2 instances:

- Global finding

### <a name="L-17"></a>[L-17] Governance functions should be controlled by time locks

Governance functions (such as upgrading contracts, setting critical parameters) should be controlled using time locks to introduce a delay between a proposal and its execution. This gives users time to exit before a potentially dangerous or malicious operation is applied.

<details>
<summary>There are 26 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L210](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L210), [#L220](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L220), [#L234-L237](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L234-L237), [#L255-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L255-L259), [#L286](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L286), [#L295](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L295), [#L304](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L304), [#L313](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L313), [#L322](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L322) ):

```solidity
210:   function addApprover(address approver) external onlyOwner {

220:   function removeApprover(address approver) external onlyOwner {

234:   function addChainSupport(
235:     string calldata srcChain,
236:     string calldata srcContractAddress
237:   ) external onlyOwner {

255:   function setThresholds(
256:     string calldata srcChain,
257:     uint256[] calldata amounts,
258:     uint256[] calldata numOfApprovers
259:   ) external onlyOwner {

286:   function setMintLimit(uint256 mintLimit) external onlyOwner {

295:   function setMintLimitDuration(uint256 mintDuration) external onlyOwner {

304:   function pause() external onlyOwner {

313:   function unpause() external onlyOwner {

322:   function rescueTokens(address _token) external onlyOwner {
```

- *SourceBridge.sol* ( [#L121-L124](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L121-L124), [#L136](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L136), [#L145](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L145), [#L160-L162](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L160-L162) ):

```solidity
121:   function setDestinationChainContractAddress(
122:     string memory destinationChain,
123:     address contractAddress
124:   ) external onlyOwner {

136:   function pause() external onlyOwner {

145:   function unpause() external onlyOwner {

160:   function multiexcall(
161:     ExCallData[] calldata exCallData
162:   ) external payable override onlyOwner returns (bytes[] memory results) {
```

- *RWADynamicOracle.sol* ( [#L151-L154](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L151-L154), [#L186-L192](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L186-L192), [#L241](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L241), [#L248](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L248) ):

```solidity
151:   function setRange(
152:     uint256 endTimestamp,
153:     uint256 dailyInterestRate
154:   ) external onlyRole(SETTER_ROLE) {

186:   function overrideRange(
187:     uint256 indexToModify,
188:     uint256 newStart,
189:     uint256 newEnd,
190:     uint256 newDailyIR,
191:     uint256 newPrevRangeClosePrice
192:   ) external onlyRole(DEFAULT_ADMIN_ROLE) {

241:   function pauseOracle() external onlyRole(PAUSER_ROLE) {

248:   function unpauseOracle() external onlyRole(DEFAULT_ADMIN_ROLE) {
```

- *rUSDY.sol* ( [#L662](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L662), [#L672-L675](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L672-L675), [#L685](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L685), [#L689](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L689), [#L698-L700](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L698-L700), [#L709-L711](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L709-L711), [#L720-L722](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L720-L722) ):

```solidity
662:   function setOracle(address _oracle) external onlyRole(USDY_MANAGER_ROLE) {

672:   function burn(
673:     address _account,
674:     uint256 _amount
675:   ) external onlyRole(BURNER_ROLE) {

685:   function pause() external onlyRole(PAUSER_ROLE) {

689:   function unpause() external onlyRole(USDY_MANAGER_ROLE) {

698:   function setBlocklist(
699:     address blocklist
700:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

709:   function setAllowlist(
710:     address allowlist
711:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

720:   function setSanctionsList(
721:     address sanctionsList
722:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {
```

- *rUSDYFactory.sol* ( [#L75-L81](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L75-L81), [#L126-L128](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L126-L128) ):

```solidity
75:   function deployrUSDY(
76:     address blocklist,
77:     address allowlist,
78:     address sanctionsList,
79:     address usdy,
80:     address oracle
81:   ) external onlyGuardian returns (address, address, address) {

126:   function multiexcall(
127:     ExCallData[] calldata exCallData
128:   ) external payable override onlyGuardian returns (bytes[] memory results) {
```

</details>

### <a name="L-18"></a>[L-18] Missing checks for `address(0)` when setting address state variables

There are 10 instances:

- *DestinationBridge.sol* ( [#L67](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L67), [#L68](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L68), [#L69](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L69) ):

```solidity
67:     TOKEN = IRWALike(_token);

68:     AXELAR_GATEWAY = IAxelarGateway(_axelarGateway);

69:     ALLOWLIST = IAllowlist(_allowlist);
```

- *SourceBridge.sol* ( [#L46](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L46), [#L47](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L47), [#L48](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L48) ):

```solidity
46:     TOKEN = IRWALike(_token);

47:     AXELAR_GATEWAY = IAxelarGateway(_axelarGateway);

48:     GAS_RECEIVER = IAxelarGasService(_gasService);
```

- *rUSDY.sol* ( [#L139](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L139), [#L140](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L140), [#L663](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L663) ):

```solidity
139:     usdy = IUSDY(_usdy);

140:     oracle = IRWADynamicOracle(_oracle);

663:     oracle = IRWADynamicOracle(_oracle);
```

- *rUSDYFactory.sol* ( [#L52](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L52) ):

```solidity
52:     guardian = _guardian;
```

### <a name="L-19"></a>[L-19] Division by zero not prevented

The divisions below take an input parameter that has no zero-value checks, which can cause the functions reverting if zero is passed.

There are 4 instances:

- *RWADynamicOracle.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L44), [#L117](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L117), [#L219](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L219) ):

```solidity
44:     uint256 trueStart = (startPrice * ONE) / dailyIR;

117:       uint256 trueStart = (rangeStartPrice * ONE) / dailyIR;

219:       uint256 trueStart = (newPrevRangeClosePrice * ONE) / newDailyIR;
```

- *rUSDY.sol* ( [#L391](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L391) ):

```solidity
391:     return (_rUSDYAmount * 1e18 * BPS_DENOMINATOR) / oracle.getPrice();
```

### <a name="L-20"></a>[L-20] Loss of precision in divisions

Division by large numbers may result in the result being zero, due to solidity not supporting fractions. Consider requiring a minimum amount for the numerator to ensure that it is always larger than the denominator.

There are 12 instances:

- *RWADynamicOracle.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L44), [#L117](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L117), [#L219](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L219), [#L266](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L266), [#L401](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L401), [#L405](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L405) ):

```solidity
44:     uint256 trueStart = (startPrice * ONE) / dailyIR;

117:       uint256 trueStart = (rangeStartPrice * ONE) / dailyIR;

219:       uint256 trueStart = (newPrevRangeClosePrice * ONE) / newDailyIR;

266:     uint256 elapsedDays = (currentTime - currentRange.start) / DAY;

401:     z = _mul(x, y) / ONE;

405:     require(y == 0 || (z = x * y) / y == x);
```

- *rUSDY.sol* ( [#L217](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L217), [#L227](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L227), [#L391](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L391), [#L398](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L398), [#L454](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L454), [#L680](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L680) ):

```solidity
217:     return (totalShares * oracle.getPrice()) / (1e18 * BPS_DENOMINATOR);

227:     return (_sharesOf(_account) * oracle.getPrice()) / (1e18 * BPS_DENOMINATOR);

391:     return (_rUSDYAmount * 1e18 * BPS_DENOMINATOR) / oracle.getPrice();

398:     return (_shares * oracle.getPrice()) / (1e18 * BPS_DENOMINATOR);

454:     usdy.transfer(msg.sender, usdyAmount / BPS_DENOMINATOR);

680:     usdy.transfer(msg.sender, sharesAmount / BPS_DENOMINATOR);
```

### <a name="L-21"></a>[L-21] Owner can renounce Ownership

Each of the following contracts implements or inherits the `renounceOwnership()` function. This can represent a certain risk if the ownership is renounced for any other reason than by design. Renouncing ownership will leave the contract without an owner, thereby removing any functionality that is only available to the owner.

There are 2 instances:

- *DestinationBridge.sol* ( [#L27-L33](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L27-L33) ):

```solidity
27: contract DestinationBridge is
28:   AxelarExecutable,
29:   MintTimeBasedRateLimiter,
30:   Ownable,
31:   Pausable
32: {
33:   /// @notice Token contract bridged by this contract
```

- *SourceBridge.sol* ( [#L11-L14](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L11-L14) ):

```solidity
11: contract SourceBridge is Ownable, Pausable, IMulticall {
12:   /// @notice Mapping from destination chain to bridge address on that chain
13:   /// @dev Axelar uses the string representation of addresses, hence we store
14:   ///      the address as a string
```

### <a name="L-22"></a>[L-22] Some tokens may revert when large transfers are made

Tokens such as COMP or UNI will revert when an address' balance reaches [`type(uint96).max`](https://github.com/compound-finance/compound-protocol/blob/a3214f67b73310d547e00fc578e8355911c9d376/contracts/Governance/Comp.sol#L238). Ensure that the calls below can be broken up into smaller batches if necessary.

There is 1 instance:

- *DestinationBridge.sol* ( [#L324](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L324) ):

```solidity
324:     IRWALike(_token).transfer(owner(), balance);
```

### <a name="L-23"></a>[L-23] Some tokens may revert when zero value transfers are made

Despite the fact that [EIP-20 states](https://github.com/ethereum/EIPs/blob/7500ac4fc1bbdfaf684e7ef851f798f6b667b2fe/EIPS/eip-20.md?plain=1#L116) that zero-value transfers must be accepted, some tokens, such as LEND, will revert if this is attempted, which may cause transactions that involve other tokens (such as batch operations) to fully revert. Consider skipping the transfer if the amount is zero, which will also save gas.

There is 1 instance:

- *DestinationBridge.sol* ( [#L324](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L324) ):

```solidity
324:     IRWALike(_token).transfer(owner(), balance);
```

### <a name="L-24"></a>[L-24] Consider implementing two-step procedure for updating protocol addresses

A copy-paste error or a typo may end up bricking protocol functionality, or sending tokens to an address with no known private key. Consider implementing a two-step procedure for updating protocol addresses, where the recipient is set as pending, and must "accept" the assignment by making an affirmative call. A straight forward way of doing this would be to have the target contracts implement [EIP-165](https://eips.ethereum.org/EIPS/eip-165), and to have the "set" functions ensure that the recipient is of the right interface type.

There are 5 instances:

- *SourceBridge.sol* ( [#L121-L124](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L121-L124) ):

```solidity
121:   function setDestinationChainContractAddress(
122:     string memory destinationChain,
123:     address contractAddress
124:   ) external onlyOwner {
```

- *rUSDY.sol* ( [#L662](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L662), [#L698-L700](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L698-L700), [#L709-L711](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L709-L711), [#L720-L722](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L720-L722) ):

```solidity
662:   function setOracle(address _oracle) external onlyRole(USDY_MANAGER_ROLE) {

698:   function setBlocklist(
699:     address blocklist
700:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

709:   function setAllowlist(
710:     address allowlist
711:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

720:   function setSanctionsList(
721:     address sanctionsList
722:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {
```

### <a name="L-25"></a>[L-25] Using zero as a parameter

Taking `0` as a valid argument in Solidity without checks can lead to severe security issues. A historical example is the infamous `0x0` address bug where numerous tokens were lost. This happens because `0` can be interpreted as an uninitialized `address`, leading to transfers to the `0x0` `address`, effectively burning tokens. Moreover, `0` as a denominator in division operations would cause a runtime exception. It's also often indicative of a logical error in the caller's code. It's important to always validate input and handle edge cases like `0` appropriately. Use `require()` statements to enforce conditions and provide clear error messages to facilitate debugging and safer code.

There are 2 instances:

- *rUSDY.sol* ( [#L549](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L549), [#L581](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L581) ):

```solidity
549:     _beforeTokenTransfer(address(0), _recipient, _sharesAmount);

581:     _beforeTokenTransfer(_account, address(0), _sharesAmount);
```

### <a name="L-26"></a>[L-26] Constructor / initialization function lacks parameter validation

Constructors and initialization functions play a critical role in contracts by setting important initial states when the contract is first deployed before the system starts. The parameters passed to the constructor and initialization functions directly affect the behavior of the contract / protocol. If incorrect parameters are provided, the system may fail to run, behave abnormally, be unstable, or lack security. Therefore, it's crucial to carefully check each parameter in the constructor and initialization functions. If an exception is found, the transaction should be rolled back.

<details>
<summary>There are 20 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L55-L66](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L55-L66) ):

```solidity
/// @audit `_token` not validated
/// @audit `_allowlist` not validated
/// @audit `_ondoApprover` not validated
/// @audit `_owner` not validated
55:   constructor(
56:     address _token,
57:     address _axelarGateway,
58:     address _allowlist,
59:     address _ondoApprover,
60:     address _owner,
61:     uint256 _mintLimit,
62:     uint256 _mintDuration
63:   )
64:     AxelarExecutable(_axelarGateway)
65:     MintTimeBasedRateLimiter(_mintDuration, _mintLimit)
66:   {
```

- *SourceBridge.sol* ( [#L40-L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L40-L45) ):

```solidity
/// @audit `_token` not validated
/// @audit `_axelarGateway` not validated
/// @audit `_gasService` not validated
/// @audit `owner` not validated
40:   constructor(
41:     address _token,
42:     address _axelarGateway,
43:     address _gasService,
44:     address owner
45:   ) {
```

- *RWADynamicOracle.sol* ( [#L30-L38](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L30-L38) ):

```solidity
/// @audit `admin` not validated
/// @audit `setter` not validated
/// @audit `pauser` not validated
/// @audit `dailyIR` not validated
/// @audit `startPrice` not validated
30:   constructor(
31:     address admin,
32:     address setter,
33:     address pauser,
34:     uint256 firstRangeStart,
35:     uint256 firstRangeEnd,
36:     uint256 dailyIR,
37:     uint256 startPrice
38:   ) {
```

- *rUSDY.sol* ( [#L109-L116](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L109-L116) ):

```solidity
/// @audit `blocklist` not validated
/// @audit `allowlist` not validated
/// @audit `sanctionsList` not validated
/// @audit `_usdy` not validated
/// @audit `guardian` not validated
/// @audit `_oracle` not validated
109:   function initialize(
110:     address blocklist,
111:     address allowlist,
112:     address sanctionsList,
113:     address _usdy,
114:     address guardian,
115:     address _oracle
116:   ) public virtual initializer {
```

- *rUSDYFactory.sol* ( [#L51](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L51) ):

```solidity
/// @audit `_guardian` not validated
51:   constructor(address _guardian) {
```

</details>

### <a name="L-27"></a>[L-27] External function calls within loops

Calling external functions within loops can easily result in insufficient gas. This greatly increases the likelihood of transaction failures, DOS attacks, and other unexpected actions. It is recommended to limit the number of loops within loops that call external functions, and to limit the gas line for each external call.

There are 2 instances:

- *SourceBridge.sol* ( [#L165-L167](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L165-L167) ):

```solidity
/// @audit Calling `call()` within `for` loop
165:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
166:         value: exCallData[i].value
167:       }(exCallData[i].data);
```

- *rUSDYFactory.sol* ( [#L131-L133](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L131-L133) ):

```solidity
/// @audit Calling `call()` within `for` loop
131:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
132:         value: exCallData[i].value
133:       }(exCallData[i].data);
```

### <a name="L-28"></a>[L-28] Functions calling contracts/addresses with transfer hooks should be protected by reentrancy guard

Even if the function follows the best practice of check-effects-interaction, not using a reentrancy guard when there may be transfer hooks opens the users of this protocol up to [read-only reentrancy vulnerability](https://chainsecurity.com/curve-lp-oracle-manipulation-post-mortem/) with no way to protect them except by block-listing the entire protocol.

There is 1 instance:

- *DestinationBridge.sol* ( [#L324](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L324) ):

```solidity
/// @audit function `rescueTokens()`
324:     IRWALike(_token).transfer(owner(), balance);
```

### <a name="L-29"></a>[L-29] Timestamp may be manipulation

The `block.timestamp` can be manipulated by miners to perform MEV profiting or other time-based attacks.

There are 4 instances:

- *RWADynamicOracle.sol* ( [#L64](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L64), [#L79](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L79), [#L80](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L80), [#L83](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L83) ):

```solidity
64:     timestamp = block.timestamp;

79:       if (range.start <= block.timestamp) {

80:         if (range.end <= block.timestamp) {

83:           return derivePrice(range, block.timestamp);
```

## Non Critical Issues

### <a name="N-1"></a>[N-1] Consider moving `msg.sender` checks to `modifier`s

If some functions are only allowed to be called by some specific users, consider using a modifier instead of checking with a require statement, especially if this check is done in multiple functions.

There are 5 instances:

- *DestinationBridge.sol* ( [#L161-L163](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L161-L163), [#L198-L200](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L198-L200) ):

```solidity
161:         if (t.approvers[i] == msg.sender) {
162:           revert AlreadyApproved();
163:         }

198:     if (!approvers[msg.sender]) {
199:       revert NotApprover();
200:     }
```

- *rUSDY.sol* ( [#L634](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L634), [#L635](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L635), [#L636-L639](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L636-L639) ):

```solidity
634:       require(!_isBlocked(msg.sender), "rUSDY: 'sender' address blocked");

635:       require(!_isSanctioned(msg.sender), "rUSDY: 'sender' address sanctioned");

636:       require(
637:         _isAllowed(msg.sender),
638:         "rUSDY: 'sender' address not on allowlist"
639:       );
```

### <a name="N-2"></a>[N-2] Custom errors has no error details

Consider adding parameters to the error to indicate which user or values caused the failure.

There are 15 instances:

- *DestinationBridge.sol* ( [#L439](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L439), [#L440](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L440), [#L441](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L441), [#L443](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L443), [#L444](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L444), [#L445](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L445), [#L446](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L446), [#L447](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L447), [#L448](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L448) ):

```solidity
439:   error NotApprover();

440:   error NoThresholdMatch();

441:   error ThresholdsNotInAscendingOrder();

443:   error ChainNotSupported();

444:   error SourceNotSupported();

445:   error NonceSpent();

446:   error AlreadyApproved();

447:   error InvalidVersion();

448:   error ArrayLengthMismatch();
```

- *SourceBridge.sol* ( [#L189](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L189), [#L190](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L190) ):

```solidity
189:   error DestinationNotSupported();

190:   error GasFeeTooLow();
```

- *RWADynamicOracle.sol* ( [#L334](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L334), [#L335](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L335), [#L336](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L336) ):

```solidity
334:   error InvalidPrice();

335:   error InvalidRange();

336:   error PriceNotSet();
```

- *rUSDY.sol* ( [#L94](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L94) ):

```solidity
94:   error UnwrapTooSmall();
```

### <a name="N-3"></a>[N-3] Import declarations should import specific identifiers, rather than the whole file

Using import declarations of the form `import {<identifier_name>} from "some/file.sol"` avoids polluting the symbol namespace making flattened files smaller, and speeds up compilation (but does not save any gas).

<details>
<summary>There are 32 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L18), [#L19](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L19), [#L20](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L20), [#L21](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L21), [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L22), [#L23](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L23), [#L24](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L24), [#L25](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L25) ):

```solidity
18: import "contracts/interfaces/IAxelarGateway.sol";

19: import "contracts/interfaces/IAxelarGasService.sol";

20: import "contracts/external/axelar/AxelarExecutable.sol";

21: import "contracts/interfaces/IRWALike.sol";

22: import "contracts/interfaces/IAllowlist.sol";

23: import "contracts/external/openzeppelin/contracts/access/Ownable.sol";

24: import "contracts/external/openzeppelin/contracts/security/Pausable.sol";

25: import "contracts/bridge/MintRateLimiter.sol";
```

- *SourceBridge.sol* ( [#L3](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L3), [#L4](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L4), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L5), [#L6](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L6), [#L8](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L8), [#L9](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L9) ):

```solidity
3: import "contracts/interfaces/IAxelarGateway.sol";

4: import "contracts/interfaces/IAxelarGasService.sol";

5: import "contracts/interfaces/IMulticall.sol";

6: import "contracts/interfaces/IRWALike.sol";

8: import "contracts/external/openzeppelin/contracts/access/Ownable.sol";

9: import "contracts/external/openzeppelin/contracts/security/Pausable.sol";
```

- *RWADynamicOracle.sol* ( [#L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L18), [#L19](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L19), [#L20](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L20) ):

```solidity
18: import "contracts/rwaOracles/IRWAOracle.sol";

19: import "contracts/external/openzeppelin/contracts/access/AccessControlEnumerable.sol";

20: import "contracts/external/openzeppelin/contracts/security/Pausable.sol";
```

- *rUSDY.sol* ( [#L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L18), [#L19](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L19), [#L20](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L20), [#L21](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L21), [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L22), [#L23](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L23), [#L24](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L24), [#L25](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L25), [#L26](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L26), [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L27), [#L28](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L28) ):

```solidity
18: import "contracts/external/openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

19: import "contracts/external/openzeppelin/contracts-upgradeable/token/ERC20/IERC20MetadataUpgradeable.sol";

20: import "contracts/external/openzeppelin/contracts-upgradeable/proxy/Initializable.sol";

21: import "contracts/external/openzeppelin/contracts-upgradeable/utils/ContextUpgradeable.sol";

22: import "contracts/external/openzeppelin/contracts-upgradeable/security/PausableUpgradeable.sol";

23: import "contracts/external/openzeppelin/contracts-upgradeable/access/AccessControlEnumerableUpgradeable.sol";

24: import "contracts/usdy/blocklist/BlocklistClientUpgradeable.sol";

25: import "contracts/usdy/allowlist/AllowlistClientUpgradeable.sol";

26: import "contracts/sanctions/SanctionsListClientUpgradeable.sol";

27: import "contracts/interfaces/IUSDY.sol";

28: import "contracts/rwaOracles/IRWADynamicOracle.sol";
```

- *rUSDYFactory.sol* ( [#L19](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L19), [#L20](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L20), [#L21](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L21), [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L22) ):

```solidity
19: import "contracts/external/openzeppelin/contracts/proxy/ProxyAdmin.sol";

20: import "contracts/Proxy.sol";

21: import "contracts/usdy/rUSDY.sol";

22: import "contracts/interfaces/IMulticall.sol";
```

</details>

### <a name="N-4"></a>[N-4] Too long functions should be refactored

Functions with too many lines are difficult to understand. It is recommended to refactor complex functions into multiple shorter and easier to understand functions.

There are 2 instances:

- *RWADynamicOracle.sol* ( [#L186](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L186), [#L345](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L345) ):

```solidity
/// @audit 51 lines
186:   function overrideRange(

/// @audit 54 lines
345:   function _rpow(
```

### <a name="N-5"></a>[N-5] There is no need to initialize variables with 0

Since the variables are automatically set to 0 when created, it is redundant to initialize it with 0 again.

There are 9 instances:

- *DestinationBridge.sol* ( [#L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L134), [#L160](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L160), [#L264](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L264) ):

```solidity
134:     for (uint256 i = 0; i < thresholds.length; ++i) {

160:       for (uint256 i = 0; i < t.approvers.length; ++i) {

264:     for (uint256 i = 0; i < amounts.length; ++i) {
```

- *SourceBridge.sol* ( [#L164](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L164) ):

```solidity
164:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

- *RWADynamicOracle.sol* ( [#L77](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L77), [#L113](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L113), [#L129](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L129) ):

```solidity
77:     for (uint256 i = 0; i < length; ++i) {

113:     for (uint256 i = 0; i < length; ++i) {

129:     for (uint256 i = 0; i < length + 1; ++i) {
```

- *rUSDYFactory.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L44), [#L130](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L130) ):

```solidity
44:   bytes32 public constant DEFAULT_ADMIN_ROLE = bytes32(0);

130:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

### <a name="N-6"></a>[N-6] Redundant inheritance specifier

The contracts below already extend the specified contract, so there is no need to list it in the inheritance list again.

There are 3 instances:

- *rUSDY.sol* ( [#L57-L66](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L57-L66) ):

```solidity
/// @audit ContextUpgradeable already extends Initializable
/// @audit PausableUpgradeable already extends ContextUpgradeable
/// @audit IERC20MetadataUpgradeable already extends IERC20Upgradeable
57: contract rUSDY is
58:   Initializable,
59:   ContextUpgradeable,
60:   PausableUpgradeable,
61:   AccessControlEnumerableUpgradeable,
62:   BlocklistClientUpgradeable,
63:   AllowlistClientUpgradeable,
64:   SanctionsListClientUpgradeable,
65:   IERC20Upgradeable,
66:   IERC20MetadataUpgradeable
```

### <a name="N-7"></a>[N-7] Variables should be named in mixedCase style

As the [Solidity Style Guide](https://docs.soliditylang.org/en/latest/style-guide.html#naming-styles) suggests: arguments, local variables and mutable state variables should be named in mixedCase style.

There are 7 instances:

- *rUSDY.sol* ( [#L389](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L389), [#L434](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L434), [#L449](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L449) ):

```solidity
/// @audit _rUSDYAmount
389:     uint256 _rUSDYAmount

/// @audit _USDYAmount
434:   function wrap(uint256 _USDYAmount) external whenNotPaused {

/// @audit _rUSDYAmount
449:   function unwrap(uint256 _rUSDYAmount) external whenNotPaused {
```

- *rUSDYFactory.sol* ( [#L47](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L47), [#L48](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L48), [#L49](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L49), [#L89](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L89) ):

```solidity
/// @audit rUSDYImplementation
47:   rUSDY public rUSDYImplementation;

/// @audit rUSDYProxyAdmin
48:   ProxyAdmin public rUSDYProxyAdmin;

/// @audit rUSDYProxy
49:   TokenProxy public rUSDYProxy;

/// @audit rUSDYProxied
89:     rUSDY rUSDYProxied = rUSDY(address(rUSDYProxy));
```

### <a name="N-8"></a>[N-8] Names of structs, events, enums and errors should use CapWords style

It is recommended by the [Solidity Style Guide](https://docs.soliditylang.org/en/latest/style-guide.html)

There is 1 instance:

- *rUSDYFactory.sol* ( [#L146](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L146) ):

```solidity
146:   event rUSDYDeployed(
```

### <a name="N-9"></a>[N-9] Names of `private`/`internal` functions should be prefixed with an underscore

It is recommended by the [Solidity Style Guide](https://docs.soliditylang.org/en/v0.8.20/style-guide.html#underscore-prefix-for-non-external-functions-and-variables).

There are 2 instances:

- *RWADynamicOracle.sol* ( [#L262-L265](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L262-L265), [#L282](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L282) ):

```solidity
262:   function derivePrice(
263:     Range memory currentRange,
264:     uint256 currentTime
265:   ) internal pure returns (uint256 price) {

282:   function roundUpTo8(uint256 value) internal pure returns (uint256) {
```

### <a name="N-10"></a>[N-10] Names of `private`/`internal` state variables should be prefixed with an underscore

It is recommended by the [Solidity Style Guide](https://docs.soliditylang.org/en/v0.8.20/style-guide.html#underscore-prefix-for-non-external-functions-and-variables).

There are 5 instances:

- *RWADynamicOracle.sol* ( [#L343](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L343) ):

```solidity
343:   uint256 private constant ONE = 10 ** 27;
```

- *rUSDY.sol* ( [#L76](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L76), [#L79](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L79), [#L82](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L82) ):

```solidity
76:   mapping(address => uint256) private shares;

79:   mapping(address => mapping(address => uint256)) private allowances;

82:   uint256 private totalShares;
```

- *rUSDYFactory.sol* ( [#L46](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L46) ):

```solidity
46:   address internal immutable guardian;
```

### <a name="N-11"></a>[N-11] Order of functions does not follow the Solidity Style Guide

According to the [Solidity Style Guide](https://docs.soliditylang.org/en/v0.8.20/style-guide.html#order-of-functions), functions should be grouped according to their visibility and ordered: `constructor`, `receive`, `fallback`, `external`, `public`, `internal`, `private`. Within a grouping, place the view and pure functions last.

<details>
<summary>There are 33 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L177](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L177), [#L197](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L197), [#L210](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L210), [#L220](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L220), [#L234-L237](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L234-L237), [#L255-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L255-L259), [#L286](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L286), [#L295](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L295), [#L304](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L304), [#L313](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L313), [#L322](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L322), [#L337](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L337), [#L361](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L361) ):

```solidity
/// @audit ↓↓ Out of order with `approve()`
177:   function _checkThresholdMet(bytes32 txnHash) internal view returns (bool) {

/// @audit ↑↑ Out of order with `_checkThresholdMet()`
197:   function approve(bytes32 txnHash) external {

/// @audit ↑↑ Out of order with `approve()`
210:   function addApprover(address approver) external onlyOwner {

/// @audit ↑↑ Out of order with `addApprover()`
220:   function removeApprover(address approver) external onlyOwner {

/// @audit ↑↑ Out of order with `removeApprover()`
234:   function addChainSupport(
235:     string calldata srcChain,
236:     string calldata srcContractAddress
237:   ) external onlyOwner {

/// @audit ↑↑ Out of order with `addChainSupport()`
255:   function setThresholds(
256:     string calldata srcChain,
257:     uint256[] calldata amounts,
258:     uint256[] calldata numOfApprovers
259:   ) external onlyOwner {

/// @audit ↑↑ Out of order with `setThresholds()`
286:   function setMintLimit(uint256 mintLimit) external onlyOwner {

/// @audit ↑↑ Out of order with `setMintLimit()`
295:   function setMintLimitDuration(uint256 mintDuration) external onlyOwner {

/// @audit ↑↑ Out of order with `setMintLimitDuration()`
304:   function pause() external onlyOwner {

/// @audit ↑↑ Out of order with `pause()`
313:   function unpause() external onlyOwner {

/// @audit ↑↑ Out of order with `unpause()`
322:   function rescueTokens(address _token) external onlyOwner {

/// @audit ↓↓ Out of order with `getNumApproved()`
337:   function _mintIfThresholdMet(bytes32 txnHash) internal {

/// @audit ↑↑ Out of order with `_mintIfThresholdMet()`
361:   function getNumApproved(bytes32 txnHash) external view returns (uint256) {
```

- *SourceBridge.sol* ( [#L91-L95](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L91-L95), [#L121-L124](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L121-L124) ):

```solidity
/// @audit ↓↓ Out of order with `setDestinationChainContractAddress()`
91:   function _payGasAndCallContract(
92:     string calldata destinationChain,
93:     string memory destContract,
94:     bytes memory payload
95:   ) private {

/// @audit ↑↑ Out of order with `_payGasAndCallContract()`
121:   function setDestinationChainContractAddress(
122:     string memory destinationChain,
123:     address contractAddress
124:   ) external onlyOwner {
```

- *RWADynamicOracle.sol* ( [#L75](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L75), [#L104-L110](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L104-L110) ):

```solidity
/// @audit ↓↓ Out of order with `simulateRange()`
75:   function getPrice() public view whenNotPaused returns (uint256 price) {

/// @audit ↑↑ Out of order with `getPrice()`
104:   function simulateRange(
105:     uint256 blockTimeStamp,
106:     uint256 dailyIR,
107:     uint256 endTime,
108:     uint256 startTime,
109:     uint256 rangeStartPrice
110:   ) external view returns (uint256 price) {
```

- *rUSDY.sol* ( [#L134-L138](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L134-L138), [#L194](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L194), [#L226](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L226), [#L245](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L245), [#L256-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L256-L259), [#L276](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L276), [#L301-L305](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L301-L305), [#L327-L330](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L327-L330), [#L353-L356](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L353-L356), [#L397](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L397), [#L416-L419](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L416-L419), [#L434](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L434), [#L449](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L449), [#L463-L467](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L463-L467), [#L485-L489](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L485-L489), [#L500](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L500), [#L514-L518](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L514-L518), [#L543-L546](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L543-L546), [#L575-L578](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L575-L578), [#L626-L630](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L626-L630), [#L662](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L662), [#L672-L675](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L672-L675), [#L685](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L685), [#L689](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L689), [#L698-L700](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L698-L700), [#L709-L711](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L709-L711), [#L720-L722](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L720-L722) ):

```solidity
/// @audit ↓↓ Out of order with `name()`
134:   function __rUSDY_init_unchained(
135:     address _usdy,
136:     address guardian,
137:     address _oracle
138:   ) internal onlyInitializing {

/// @audit ↑↑ Out of order with `__rUSDY_init_unchained()`
194:   function name() public pure returns (string memory) {

/// @audit ↓↓ Out of order with `transfer()`
226:   function balanceOf(address _account) public view returns (uint256) {

/// @audit ↑↑ Out of order with `balanceOf()`
245:   function transfer(address _recipient, uint256 _amount) public returns (bool) {

/// @audit ↓↓ Out of order with `approve()`
256:   function allowance(
257:     address _owner,
258:     address _spender
259:   ) public view returns (uint256) {

/// @audit ↑↑ Out of order with `allowance()`
276:   function approve(address _spender, uint256 _amount) public returns (bool) {

/// @audit ↑↑ Out of order with `approve()`
301:   function transferFrom(
302:     address _sender,
303:     address _recipient,
304:     uint256 _amount
305:   ) public returns (bool) {

/// @audit ↑↑ Out of order with `transferFrom()`
327:   function increaseAllowance(
328:     address _spender,
329:     uint256 _addedValue
330:   ) public returns (bool) {

/// @audit ↑↑ Out of order with `increaseAllowance()`
353:   function decreaseAllowance(
354:     address _spender,
355:     uint256 _subtractedValue
356:   ) public returns (bool) {

/// @audit ↓↓ Out of order with `transferShares()`
397:   function getRUSDYByShares(uint256 _shares) public view returns (uint256) {

/// @audit ↑↑ Out of order with `getRUSDYByShares()`
416:   function transferShares(
417:     address _recipient,
418:     uint256 _sharesAmount
419:   ) public returns (uint256) {

/// @audit ↑↑ Out of order with `transferShares()`
434:   function wrap(uint256 _USDYAmount) external whenNotPaused {

/// @audit ↑↑ Out of order with `wrap()`
449:   function unwrap(uint256 _rUSDYAmount) external whenNotPaused {

/// @audit ↓↓ Out of order with `_approve()`
463:   function _transfer(
464:     address _sender,
465:     address _recipient,
466:     uint256 _amount
467:   ) internal {

/// @audit ↑↑ Out of order with `_transfer()`
485:   function _approve(
486:     address _owner,
487:     address _spender,
488:     uint256 _amount
489:   ) internal whenNotPaused {

/// @audit ↓↓ Out of order with `_transferShares()`
500:   function _sharesOf(address _account) internal view returns (uint256) {

/// @audit ↑↑ Out of order with `_sharesOf()`
514:   function _transferShares(
515:     address _sender,
516:     address _recipient,
517:     uint256 _sharesAmount
518:   ) internal whenNotPaused {

/// @audit ↑↑ Out of order with `_transferShares()`
543:   function _mintShares(
544:     address _recipient,
545:     uint256 _sharesAmount
546:   ) internal whenNotPaused returns (uint256) {

/// @audit ↑↑ Out of order with `_mintShares()`
575:   function _burnShares(
576:     address _account,
577:     uint256 _sharesAmount
578:   ) internal whenNotPaused returns (uint256) {

/// @audit ↓↓ Out of order with `setOracle()`
626:   function _beforeTokenTransfer(
627:     address from,
628:     address to,
629:     uint256
630:   ) internal view {

/// @audit ↑↑ Out of order with `_beforeTokenTransfer()`
662:   function setOracle(address _oracle) external onlyRole(USDY_MANAGER_ROLE) {

/// @audit ↑↑ Out of order with `setOracle()`
672:   function burn(
673:     address _account,
674:     uint256 _amount
675:   ) external onlyRole(BURNER_ROLE) {

/// @audit ↑↑ Out of order with `burn()`
685:   function pause() external onlyRole(PAUSER_ROLE) {

/// @audit ↑↑ Out of order with `pause()`
689:   function unpause() external onlyRole(USDY_MANAGER_ROLE) {

/// @audit ↑↑ Out of order with `unpause()`
698:   function setBlocklist(
699:     address blocklist
700:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

/// @audit ↑↑ Out of order with `setBlocklist()`
709:   function setAllowlist(
710:     address allowlist
711:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

/// @audit ↑↑ Out of order with `setAllowlist()`
720:   function setSanctionsList(
721:     address sanctionsList
722:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {
```

</details>

### <a name="N-12"></a>[N-12] Use of `override` is unnecessary

Starting with Solidity version [0.8.8](https://docs.soliditylang.org/en/v0.8.20/contracts.html#function-overriding), using the `override` keyword when the function solely overrides an interface function, and the function doesn't exist in multiple base contracts, is unnecessary.

There are 5 instances:

- *SourceBridge.sol* ( [#L160-L162](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L160-L162) ):

```solidity
160:   function multiexcall(
161:     ExCallData[] calldata exCallData
162:   ) external payable override onlyOwner returns (bytes[] memory results) {
```

- *rUSDY.sol* ( [#L698-L700](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L698-L700), [#L709-L711](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L709-L711), [#L720-L722](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L720-L722) ):

```solidity
698:   function setBlocklist(
699:     address blocklist
700:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

709:   function setAllowlist(
710:     address allowlist
711:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

720:   function setSanctionsList(
721:     address sanctionsList
722:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {
```

- *rUSDYFactory.sol* ( [#L126-L128](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L126-L128) ):

```solidity
126:   function multiexcall(
127:     ExCallData[] calldata exCallData
128:   ) external payable override onlyGuardian returns (bytes[] memory results) {
```

### <a name="N-13"></a>[N-13] Unused errors

The following `error`s are defined but not used. It is recommended to check the code for logical omissions that cause them not to be used. If it's determined that they are not needed anywhere, it's best to remove them from the codebase to improve code clarity and minimize confusion.
Note that there may be cases where an error appears to be used because it has multiple definitions in different files. In such cases, the definitions should be moved to a separate file.

There are 2 instances:

- *RWADynamicOracle.sol* ( [#L334](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L334), [#L336](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L336) ):

```solidity
334:   error InvalidPrice();

336:   error PriceNotSet();
```

### <a name="N-14"></a>[N-14] Custom errors should be used rather than `revert()`/`require()`

Custom errors are available from solidity version 0.8.4. Custom errors are more easily processed in try-catch blocks, and are easier to re-use and maintain.

<details>
<summary>There are 25 instances (click to show):</summary>

- *SourceBridge.sol* ( [#L168](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L168) ):

```solidity
168:       require(success, "Call Failed");
```

- *RWADynamicOracle.sol* ( [#L405](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L405) ):

```solidity
405:     require(y == 0 || (z = x * y) / y == x);
```

- *rUSDY.sol* ( [#L307](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L307), [#L358-L361](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L358-L361), [#L435](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L435), [#L450](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L450), [#L490](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L490), [#L491](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L491), [#L519](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L519), [#L520](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L520), [#L525-L528](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L525-L528), [#L547](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L547), [#L579](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L579), [#L584](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L584), [#L634](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L634), [#L635](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L635), [#L636-L639](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L636-L639), [#L644](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L644), [#L645](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L645), [#L646](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L646), [#L651](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L651), [#L652](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L652), [#L653](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L653) ):

```solidity
307:     require(currentAllowance >= _amount, "TRANSFER_AMOUNT_EXCEEDS_ALLOWANCE");

358:     require(
359:       currentAllowance >= _subtractedValue,
360:       "DECREASED_ALLOWANCE_BELOW_ZERO"
361:     );

435:     require(_USDYAmount > 0, "rUSDY: can't wrap zero USDY tokens");

450:     require(_rUSDYAmount > 0, "rUSDY: can't unwrap zero rUSDY tokens");

490:     require(_owner != address(0), "APPROVE_FROM_ZERO_ADDRESS");

491:     require(_spender != address(0), "APPROVE_TO_ZERO_ADDRESS");

519:     require(_sender != address(0), "TRANSFER_FROM_THE_ZERO_ADDRESS");

520:     require(_recipient != address(0), "TRANSFER_TO_THE_ZERO_ADDRESS");

525:     require(
526:       _sharesAmount <= currentSenderShares,
527:       "TRANSFER_AMOUNT_EXCEEDS_BALANCE"
528:     );

547:     require(_recipient != address(0), "MINT_TO_THE_ZERO_ADDRESS");

579:     require(_account != address(0), "BURN_FROM_THE_ZERO_ADDRESS");

584:     require(_sharesAmount <= accountShares, "BURN_AMOUNT_EXCEEDS_BALANCE");

634:       require(!_isBlocked(msg.sender), "rUSDY: 'sender' address blocked");

635:       require(!_isSanctioned(msg.sender), "rUSDY: 'sender' address sanctioned");

636:       require(
637:         _isAllowed(msg.sender),
638:         "rUSDY: 'sender' address not on allowlist"
639:       );

644:       require(!_isBlocked(from), "rUSDY: 'from' address blocked");

645:       require(!_isSanctioned(from), "rUSDY: 'from' address sanctioned");

646:       require(_isAllowed(from), "rUSDY: 'from' address not on allowlist");

651:       require(!_isBlocked(to), "rUSDY: 'to' address blocked");

652:       require(!_isSanctioned(to), "rUSDY: 'to' address sanctioned");

653:       require(_isAllowed(to), "rUSDY: 'to' address not on allowlist");
```

- *rUSDYFactory.sol* ( [#L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L134), [#L155](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L155) ):

```solidity
134:       require(success, "Call Failed");

155:     require(msg.sender == guardian, "rUSDYFactory: You are not the Guardian");
```

</details>

### <a name="N-15"></a>[N-15] `assert()` should be replaced with `require()` or `revert()`

In versions of Solidity prior to 0.8.0, when encountering an assert all the remaining gas will be consumed.
Even after solidity 0.8.0, the assert function is still not recommended, as described in the [documentation](https://docs.soliditylang.org/en/v0.8.20/control-structures.html#panic-via-assert-and-error-via-require):
> Assert should only be used to test for internal errors, and to check invariants. Properly functioning code should never create a Panic, not even on invalid external input. If this happens, then there is a bug in your contract which you should fix.

There is 1 instance:

- *rUSDYFactory.sol* ( [#L100](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L100) ):

```solidity
100:     assert(rUSDYProxyAdmin.owner() == guardian);
```

### <a name="N-16"></a>[N-16] Constants/Immutables redefined elsewhere

Consider defining in only one contract so that values cannot become out of sync when only one location is updated. A [cheap way](https://medium.com/coinmonks/gas-cost-of-solidity-library-functions-dbe0cedd4678) to store constants/immutables in a single location is to create an `internal constant` in a `library`. If the variable is a local cache of another contract's value, consider making the cache variable internal or private, which will require external users to query the contract with the source of truth, so that callers don't get out of sync.

There are 8 instances:

- *DestinationBridge.sol* ( [#L34](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L34), [#L37](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L37), [#L48](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L48) ):

```solidity
/// @audit Seen in contracts/bridge/SourceBridge.sol#18
34:   IRWALike public immutable TOKEN;

/// @audit Seen in contracts/bridge/SourceBridge.sol#21
37:   IAxelarGateway public immutable AXELAR_GATEWAY;

/// @audit Seen in contracts/bridge/SourceBridge.sol#27
48:   bytes32 public constant VERSION = "1.0";
```

- *SourceBridge.sol* ( [#L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L18), [#L21](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L21), [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L27) ):

```solidity
/// @audit Seen in contracts/bridge/DestinationBridge.sol#34
18:   IRWALike public immutable TOKEN;

/// @audit Seen in contracts/bridge/DestinationBridge.sol#37
21:   IAxelarGateway public immutable AXELAR_GATEWAY;

/// @audit Seen in contracts/bridge/DestinationBridge.sol#48
27:   bytes32 public constant VERSION = "1.0";
```

- *RWADynamicOracle.sol* ( [#L28](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L28) ):

```solidity
/// @audit Seen in contracts/usdy/rUSDY.sol#99
28:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
```

- *rUSDY.sol* ( [#L99](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L99) ):

```solidity
/// @audit Seen in contracts/rwaOracles/RWADynamicOracle.sol#28
99:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
```

### <a name="N-17"></a>[N-17] Events should be emitted before external calls

Ensure that events follow the best practice of check-effects-interaction, and are emitted before external calls.

There are 6 instances:

- *DestinationBridge.sol* ( [#L351](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L351) ):

```solidity
/// @audit setAccountStatus() is called before this emit
351:       emit BridgeCompleted(txn.sender, txn.amount);
```

- *rUSDY.sol* ( [#L438](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L438), [#L439](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L439), [#L455](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L455), [#L682](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L682) ):

```solidity
/// @audit transferFrom() is called before this emit
438:     emit Transfer(address(0), msg.sender, getRUSDYByShares(_USDYAmount));

/// @audit transferFrom() is called before this emit
439:     emit TransferShares(address(0), msg.sender, _USDYAmount);

/// @audit transfer() is called before this emit
455:     emit TokensBurnt(msg.sender, _rUSDYAmount);

/// @audit transfer() is called before this emit
682:     emit TokensBurnt(_account, _amount);
```

- *rUSDYFactory.sol* ( [#L101-L107](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L101-L107) ):

```solidity
/// @audit initialize() is called before this emit
101:     emit rUSDYDeployed(
102:       address(rUSDYProxy),
103:       address(rUSDYProxyAdmin),
104:       address(rUSDYImplementation),
105:       "Ondo Rebasing U.S. Dollar Yield",
106:       "rUSDY"
107:     );
```

### <a name="N-18"></a>[N-18] `require()` / `revert()` statements should have descriptive reason strings

There is 1 instance:

- *RWADynamicOracle.sol* ( [#L405](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L405) ):

```solidity
405:     require(y == 0 || (z = x * y) / y == x);
```

### <a name="N-19"></a>[N-19] Event is missing `indexed` fields

Index event fields makes the field more quickly accessible to [off-chain tools](https://ethereum.stackexchange.com/questions/40396/can-somebody-please-explain-the-concept-of-event-indexing) that parse events. However, note that each indexed field costs extra gas during emission, so it's not necessarily best to index the maximum allowed per event (three fields). Each event should use three indexed fields if there are three or more fields, and gas usage is not particularly of concern for the events in question. If there are fewer than three fields, all of the fields should be indexed.

<details>
<summary>There are 9 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L389](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L389), [#L396](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L396), [#L422](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L422), [#L432-L437](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L432-L437) ):

```solidity
389:   event ApproverRemoved(address approver);

396:   event ApproverAdded(address approver);

422:   event BridgeCompleted(address user, uint256 amount);

432:   event MessageReceived(
433:     string srcChain,
434:     address srcSender,
435:     uint256 amt,
436:     uint256 nonce
437:   );
```

- *SourceBridge.sol* ( [#L183-L186](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L183-L186) ):

```solidity
183:   event DestinationChainContractAddressSet(
184:     string indexed destinationChain,
185:     address contractAddress
186:   );
```

- *RWADynamicOracle.sol* ( [#L309-L315](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L309-L315), [#L326-L332](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L326-L332) ):

```solidity
309:   event RangeSet(
310:     uint256 indexed index,
311:     uint256 start,
312:     uint256 end,
313:     uint256 dailyInterestRate,
314:     uint256 prevRangeClosePrice
315:   );

326:   event RangeOverriden(
327:     uint256 indexed index,
328:     uint256 newStart,
329:     uint256 newEnd,
330:     uint256 newDailyInterestRate,
331:     uint256 newPrevRangeClosePrice
332:   );
```

- *rUSDY.sol* ( [#L172-L177](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L172-L177) ):

```solidity
172:   event SharesBurnt(
173:     address indexed account,
174:     uint256 preRebaseTokenAmount,
175:     uint256 postRebaseTokenAmount,
176:     uint256 sharesAmount
177:   );
```

- *rUSDYFactory.sol* ( [#L146-L152](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L146-L152) ):

```solidity
146:   event rUSDYDeployed(
147:     address proxy,
148:     address proxyAdmin,
149:     address implementation,
150:     string name,
151:     string ticker
152:   );
```

</details>

### <a name="N-20"></a>[N-20] Common functions should be refactored to a common base contract

The functions below have the same implementation as is seen in other files. The functions should be refactored into functions of a common base contract.

There are 4 instances:

- *DestinationBridge.sol* ( [#L304-L306](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L304-L306), [#L313-L315](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L313-L315) ):

```solidity
/// @audit Seen on line 136 in contracts/bridge/SourceBridge.sol
304:   function pause() external onlyOwner {
305:     _pause();
306:   }

/// @audit Seen on line 145 in contracts/bridge/SourceBridge.sol
313:   function unpause() external onlyOwner {
314:     _unpause();
315:   }
```

- *SourceBridge.sol* ( [#L136-L138](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L136-L138), [#L145-L147](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L145-L147) ):

```solidity
/// @audit Seen on line 304 in contracts/bridge/DestinationBridge.sol
136:   function pause() external onlyOwner {
137:     _pause();
138:   }

/// @audit Seen on line 313 in contracts/bridge/DestinationBridge.sol
145:   function unpause() external onlyOwner {
146:     _unpause();
147:   }
```

### <a name="N-21"></a>[N-21] Imports could be organized more systematically

The contract's interface should be imported first, followed by each of the interfaces it uses, followed by all other files. The examples below do not follow this layout.

There are 3 instances:

- *DestinationBridge.sol* ( [#L21](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L21) ):

```solidity
/// @audit Out of order with the prev import️ ⬆
21: import "contracts/interfaces/IRWALike.sol";
```

- *rUSDY.sol* ( [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L27) ):

```solidity
/// @audit Out of order with the prev import️ ⬆
27: import "contracts/interfaces/IUSDY.sol";
```

- *rUSDYFactory.sol* ( [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L22) ):

```solidity
/// @audit Out of order with the prev import️ ⬆
22: import "contracts/interfaces/IMulticall.sol";
```

### <a name="N-22"></a>[N-22] Magic numbers should be replaced with constants

Magic numbers are hard-coded values in code that can make it difficult for developers and maintainers to understand the code, and can also cause confusion or errors. To improve the readability and maintainability of code, it is recommended to replace magic numbers with constants that have good readability.

There are 8 instances:

- *RWADynamicOracle.sol* ( [#L283](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L283), [#L284](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L284), [#L285](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L285) ):

```solidity
/// @audit 1e10
283:     uint256 remainder = value % 1e10;

/// @audit 0.5e10
284:     if (remainder >= 0.5e10) {

/// @audit 1e10
285:       value += 1e10;
```

- *rUSDY.sol* ( [#L210](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L210), [#L217](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L217), [#L227](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L227), [#L391](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L391), [#L398](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L398) ):

```solidity
/// @audit 18
210:     return 18;

/// @audit 1e18
217:     return (totalShares * oracle.getPrice()) / (1e18 * BPS_DENOMINATOR);

/// @audit 1e18
227:     return (_sharesOf(_account) * oracle.getPrice()) / (1e18 * BPS_DENOMINATOR);

/// @audit 1e18
391:     return (_rUSDYAmount * 1e18 * BPS_DENOMINATOR) / oracle.getPrice();

/// @audit 1e18
398:     return (_shares * oracle.getPrice()) / (1e18 * BPS_DENOMINATOR);
```

### <a name="N-23"></a>[N-23] Expressions for constant values should use `immutable` rather than `constant`

While it doesn't save any gas because the compiler knows that developers often make this mistake, it's still best to use the right tool for the task at hand. There is a difference between `constant` variables and `immutable` variables, and they should each be used in their appropriate contexts. `constants` should be used for literal values written into the code, and `immutable` variables should be used for expressions, or values calculated in, or passed into the constructor.

There are 8 instances:

- *RWADynamicOracle.sol* ( [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L27), [#L28](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L28), [#L343](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L343) ):

```solidity
27:   bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");

28:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

343:   uint256 private constant ONE = 10 ** 27;
```

- *rUSDY.sol* ( [#L97](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L97), [#L98](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L98), [#L99](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L99), [#L100](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L100), [#L101-L102](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L101-L102) ):

```solidity
97:   bytes32 public constant USDY_MANAGER_ROLE = keccak256("ADMIN_ROLE");

98:   bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

99:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

100:   bytes32 public constant BURNER_ROLE = keccak256("BURN_ROLE");

101:   bytes32 public constant LIST_CONFIGURER_ROLE =
102:     keccak256("LIST_CONFIGURER_ROLE");
```

### <a name="N-24"></a>[N-24] Public functions not called internally should be declared `external`

If desired, sub contracts can change the visibility from `external` to `public` by [overriding](https://docs.soliditylang.org/en/v0.8.20/contracts.html#function-overriding) the functions of their parents.

There are 15 instances:

- *rUSDY.sol* ( [#L109-L116](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L109-L116), [#L194](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L194), [#L202](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L202), [#L209](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L209), [#L216](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L216), [#L226](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L226), [#L245](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L245), [#L256-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L256-L259), [#L276](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L276), [#L301-L305](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L301-L305), [#L327-L330](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L327-L330), [#L353-L356](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L353-L356), [#L372](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L372), [#L381](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L381), [#L416-L419](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L416-L419) ):

```solidity
109:   function initialize(
110:     address blocklist,
111:     address allowlist,
112:     address sanctionsList,
113:     address _usdy,
114:     address guardian,
115:     address _oracle
116:   ) public virtual initializer {

194:   function name() public pure returns (string memory) {

202:   function symbol() public pure returns (string memory) {

209:   function decimals() public pure returns (uint8) {

216:   function totalSupply() public view returns (uint256) {

226:   function balanceOf(address _account) public view returns (uint256) {

245:   function transfer(address _recipient, uint256 _amount) public returns (bool) {

256:   function allowance(
257:     address _owner,
258:     address _spender
259:   ) public view returns (uint256) {

276:   function approve(address _spender, uint256 _amount) public returns (bool) {

301:   function transferFrom(
302:     address _sender,
303:     address _recipient,
304:     uint256 _amount
305:   ) public returns (bool) {

327:   function increaseAllowance(
328:     address _spender,
329:     uint256 _addedValue
330:   ) public returns (bool) {

353:   function decreaseAllowance(
354:     address _spender,
355:     uint256 _subtractedValue
356:   ) public returns (bool) {

372:   function getTotalShares() public view returns (uint256) {

381:   function sharesOf(address _account) public view returns (uint256) {

416:   function transferShares(
417:     address _recipient,
418:     uint256 _sharesAmount
419:   ) public returns (uint256) {
```

### <a name="N-25"></a>[N-25] NatSpec documentation for contract is missing

e.g. `@dev` or `@notice`, and it must appear above the contract definition braces in order to be identified by the compiler as NatSpec.

There are 4 instances:

- *DestinationBridge.sol* ( [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L27) ):

```solidity
27: contract DestinationBridge is
```

- *SourceBridge.sol* ( [#L11](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L11) ):

```solidity
11: contract SourceBridge is Ownable, Pausable, IMulticall {
```

- *IRWADynamicOracle.sol* ( [#L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L18) ):

```solidity
18: interface IRWADynamicOracle {
```

- *RWADynamicOracle.sol* ( [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L22) ):

```solidity
22: contract RWADynamicOracle is IRWAOracle, AccessControlEnumerable, Pausable {
```

### <a name="N-26"></a>[N-26] Contract declarations should have NatSpec `@author` annotations

There are 5 instances:

- *DestinationBridge.sol* ( [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L27) ):

```solidity
27: contract DestinationBridge is
```

- *SourceBridge.sol* ( [#L11](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L11) ):

```solidity
11: contract SourceBridge is Ownable, Pausable, IMulticall {
```

- *IRWADynamicOracle.sol* ( [#L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L18) ):

```solidity
18: interface IRWADynamicOracle {
```

- *RWADynamicOracle.sol* ( [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L22) ):

```solidity
22: contract RWADynamicOracle is IRWAOracle, AccessControlEnumerable, Pausable {
```

- *rUSDY.sol* ( [#L57](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L57) ):

```solidity
57: contract rUSDY is
```

### <a name="N-27"></a>[N-27] Contract declarations should have NatSpec `@title` annotations

Some contract definitions have an incomplete NatSpec: add a `@title` notation to describe the contract to improve the code documentation.

There are 4 instances:

- *DestinationBridge.sol* ( [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L27) ):

```solidity
27: contract DestinationBridge is
```

- *SourceBridge.sol* ( [#L11](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L11) ):

```solidity
11: contract SourceBridge is Ownable, Pausable, IMulticall {
```

- *IRWADynamicOracle.sol* ( [#L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L18) ):

```solidity
18: interface IRWADynamicOracle {
```

- *RWADynamicOracle.sol* ( [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L22) ):

```solidity
22: contract RWADynamicOracle is IRWAOracle, AccessControlEnumerable, Pausable {
```

### <a name="N-28"></a>[N-28] NatSpec documentation for function is missing

It is recommended that Solidity contracts are fully annotated using NatSpec for all public interfaces (everything in the ABI). It is clearly stated in the Solidity official documentation.
In complex projects such as DeFi, the interpretation of all functions and their arguments and returns is important for code readability and auditability.

There are 11 instances:

- *DestinationBridge.sol* ( [#L55](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L55) ):

```solidity
55:   constructor(
```

- *RWADynamicOracle.sol* ( [#L30](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L30), [#L345](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L345), [#L400](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L400), [#L404](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L404) ):

```solidity
30:   constructor(

345:   function _rpow(

400:   function _rmul(uint256 x, uint256 y) internal pure returns (uint256 z) {

404:   function _mul(uint256 x, uint256 y) internal pure returns (uint256 z) {
```

- *rUSDY.sol* ( [#L109](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L109), [#L120](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L120), [#L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L134), [#L685](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L685), [#L689](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L689) ):

```solidity
109:   function initialize(

120:   function __rUSDY_init(

134:   function __rUSDY_init_unchained(

685:   function pause() external onlyRole(PAUSER_ROLE) {

689:   function unpause() external onlyRole(USDY_MANAGER_ROLE) {
```

- *rUSDYFactory.sol* ( [#L51](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L51) ):

```solidity
51:   constructor(address _guardian) {
```

### <a name="N-29"></a>[N-29] Missing NatSpec `@param`

Some functions have an incomplete NatSpec: add a `@param` notation to describe the function parameters to improve the code documentation.

<details>
<summary>There are 73 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L55-L63](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L55-L63) ):

```solidity
/// @audit Missing @param for `_token`, `_axelarGateway`, `_allowlist`, `_ondoApprover`, `_owner`, `_mintLimit`, `_mintDuration`
55:   constructor(
56:     address _token,
57:     address _axelarGateway,
58:     address _allowlist,
59:     address _ondoApprover,
60:     address _owner,
61:     uint256 _mintLimit,
62:     uint256 _mintDuration
63:   )
```

- *RWADynamicOracle.sol* ( [#L30-L38](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L30-L38), [#L345-L349](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L345-L349), [#L400](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L400), [#L404](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L404) ):

```solidity
/// @audit Missing @param for `admin`, `setter`, `pauser`, `firstRangeStart`, `firstRangeEnd`, `dailyIR`, `startPrice`
30:   constructor(
31:     address admin,
32:     address setter,
33:     address pauser,
34:     uint256 firstRangeStart,
35:     uint256 firstRangeEnd,
36:     uint256 dailyIR,
37:     uint256 startPrice
38:   ) {

/// @audit Missing @param for `x`, `n`, `base`
345:   function _rpow(
346:     uint256 x,
347:     uint256 n,
348:     uint256 base
349:   ) internal pure returns (uint256 z) {

/// @audit Missing @param for `x`, `y`
400:   function _rmul(uint256 x, uint256 y) internal pure returns (uint256 z) {

/// @audit Missing @param for `x`, `y`
404:   function _mul(uint256 x, uint256 y) internal pure returns (uint256 z) {
```

- *rUSDY.sol* ( [#L109-L116](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L109-L116), [#L120-L127](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L120-L127), [#L134-L138](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L134-L138), [#L226](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L226), [#L245](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L245), [#L256-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L256-L259), [#L276](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L276), [#L301-L305](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L301-L305), [#L327-L330](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L327-L330), [#L353-L356](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L353-L356), [#L381](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L381), [#L388-L390](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L388-L390), [#L397](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L397), [#L416-L419](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L416-L419), [#L463-L467](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L463-L467), [#L485-L489](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L485-L489), [#L500](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L500), [#L514-L518](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L514-L518), [#L543-L546](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L543-L546), [#L575-L578](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L575-L578), [#L626-L630](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L626-L630) ):

```solidity
/// @audit Missing @param for `blocklist`, `allowlist`, `sanctionsList`, `_usdy`, `guardian`, `_oracle`
109:   function initialize(
110:     address blocklist,
111:     address allowlist,
112:     address sanctionsList,
113:     address _usdy,
114:     address guardian,
115:     address _oracle
116:   ) public virtual initializer {

/// @audit Missing @param for `blocklist`, `allowlist`, `sanctionsList`, `_usdy`, `guardian`, `_oracle`
120:   function __rUSDY_init(
121:     address blocklist,
122:     address allowlist,
123:     address sanctionsList,
124:     address _usdy,
125:     address guardian,
126:     address _oracle
127:   ) internal onlyInitializing {

/// @audit Missing @param for `_usdy`, `guardian`, `_oracle`
134:   function __rUSDY_init_unchained(
135:     address _usdy,
136:     address guardian,
137:     address _oracle
138:   ) internal onlyInitializing {

/// @audit Missing @param for `_account`
226:   function balanceOf(address _account) public view returns (uint256) {

/// @audit Missing @param for `_recipient`, `_amount`
245:   function transfer(address _recipient, uint256 _amount) public returns (bool) {

/// @audit Missing @param for `_owner`, `_spender`
256:   function allowance(
257:     address _owner,
258:     address _spender
259:   ) public view returns (uint256) {

/// @audit Missing @param for `_spender`, `_amount`
276:   function approve(address _spender, uint256 _amount) public returns (bool) {

/// @audit Missing @param for `_sender`, `_recipient`, `_amount`
301:   function transferFrom(
302:     address _sender,
303:     address _recipient,
304:     uint256 _amount
305:   ) public returns (bool) {

/// @audit Missing @param for `_spender`, `_addedValue`
327:   function increaseAllowance(
328:     address _spender,
329:     uint256 _addedValue
330:   ) public returns (bool) {

/// @audit Missing @param for `_spender`, `_subtractedValue`
353:   function decreaseAllowance(
354:     address _spender,
355:     uint256 _subtractedValue
356:   ) public returns (bool) {

/// @audit Missing @param for `_account`
381:   function sharesOf(address _account) public view returns (uint256) {

/// @audit Missing @param for `_rUSDYAmount`
388:   function getSharesByRUSDY(
389:     uint256 _rUSDYAmount
390:   ) public view returns (uint256) {

/// @audit Missing @param for `_shares`
397:   function getRUSDYByShares(uint256 _shares) public view returns (uint256) {

/// @audit Missing @param for `_recipient`, `_sharesAmount`
416:   function transferShares(
417:     address _recipient,
418:     uint256 _sharesAmount
419:   ) public returns (uint256) {

/// @audit Missing @param for `_sender`, `_recipient`, `_amount`
463:   function _transfer(
464:     address _sender,
465:     address _recipient,
466:     uint256 _amount
467:   ) internal {

/// @audit Missing @param for `_owner`, `_spender`, `_amount`
485:   function _approve(
486:     address _owner,
487:     address _spender,
488:     uint256 _amount
489:   ) internal whenNotPaused {

/// @audit Missing @param for `_account`
500:   function _sharesOf(address _account) internal view returns (uint256) {

/// @audit Missing @param for `_sender`, `_recipient`, `_sharesAmount`
514:   function _transferShares(
515:     address _sender,
516:     address _recipient,
517:     uint256 _sharesAmount
518:   ) internal whenNotPaused {

/// @audit Missing @param for `_recipient`, `_sharesAmount`
543:   function _mintShares(
544:     address _recipient,
545:     uint256 _sharesAmount
546:   ) internal whenNotPaused returns (uint256) {

/// @audit Missing @param for `_account`, `_sharesAmount`
575:   function _burnShares(
576:     address _account,
577:     uint256 _sharesAmount
578:   ) internal whenNotPaused returns (uint256) {

/// @audit Missing @param for `from`, `to`
626:   function _beforeTokenTransfer(
627:     address from,
628:     address to,
629:     uint256
630:   ) internal view {
```

- *rUSDYFactory.sol* ( [#L51](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L51), [#L75-L81](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L75-L81) ):

```solidity
/// @audit Missing @param for `_guardian`
51:   constructor(address _guardian) {

/// @audit Missing @param for `oracle`
75:   function deployrUSDY(
76:     address blocklist,
77:     address allowlist,
78:     address sanctionsList,
79:     address usdy,
80:     address oracle
81:   ) external onlyGuardian returns (address, address, address) {
```

</details>

### <a name="N-30"></a>[N-30] Public variable declarations should have NatSpec descriptions

There are 20 instances:

- *DestinationBridge.sol* ( [#L43](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L43), [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L44), [#L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L45), [#L52](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L52), [#L53](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L53) ):

```solidity
43:   mapping(address => bool) public approvers;

44:   mapping(string => bytes32) public chainToApprovedSender;

45:   mapping(bytes32 => mapping(uint256 => bool)) public isSpentNonce;

52:   mapping(string => Threshold[]) public chainToThresholds;

53:   mapping(bytes32 => Transaction) public txnHashToTransaction;
```

- *RWADynamicOracle.sol* ( [#L23](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L23), [#L25](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L25), [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L27), [#L28](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L28) ):

```solidity
23:   uint256 public constant DAY = 1 days;

25:   Range[] public ranges;

27:   bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");

28:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
```

- *rUSDY.sol* ( [#L85](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L85), [#L88](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L88), [#L91](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L91), [#L98](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L98), [#L99](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L99), [#L100](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L100), [#L101](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L101) ):

```solidity
85:   IRWADynamicOracle public oracle;

88:   IUSDY public usdy;

91:   uint256 public constant BPS_DENOMINATOR = 10_000;

98:   bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

99:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

100:   bytes32 public constant BURNER_ROLE = keccak256("BURN_ROLE");

101:   bytes32 public constant LIST_CONFIGURER_ROLE =
```

- *rUSDYFactory.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L44), [#L47](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L47), [#L48](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L48), [#L49](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L49) ):

```solidity
44:   bytes32 public constant DEFAULT_ADMIN_ROLE = bytes32(0);

47:   rUSDY public rUSDYImplementation;

48:   ProxyAdmin public rUSDYProxyAdmin;

49:   TokenProxy public rUSDYProxy;
```

### <a name="N-31"></a>[N-31] NatSpec `@return` is missing

It is recommended that Solidity contracts are fully annotated using NatSpec

<details>
<summary>There are 15 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L169-L177](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L169-L177), [#L355-L361](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L355-L361) ):

```solidity
169:   /**
170:    * @notice Internal function used to check if the approval threshold has been
171:    *         met for a given transaction.
172:    *
173:    * @param txnHash The txnHash to check
174:    *
175:    * @dev If an approver has been removed, any previous approvals are still valid
176:    */
177:   function _checkThresholdMet(bytes32 txnHash) internal view returns (bool) {

355:   /**
356:    * @notice External view function used to get the number of approvers for a
357:    *         given txnHash
358:    *
359:    * @param txnHash The hash to get the number of approvers for
360:    */
361:   function getNumApproved(bytes32 txnHash) external view returns (uint256) {
```

- *SourceBridge.sol* ( [#L149-L162](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L149-L162) ):

```solidity
149:   /**
150:    * @notice Allows for arbitrary batched calls
151:    *
152:    * @dev All external calls made through this function will
153:    *      msg.sender == contract address
154:    *
155:    * @param exCallData Struct consisting of
156:    *       1) target - contract to call
157:    *       2) data - data to call target with
158:    *       3) value - eth value to call target with
159:    */
160:   function multiexcall(
161:     ExCallData[] calldata exCallData
162:   ) external payable override onlyOwner returns (bytes[] memory results) {
```

- *IRWADynamicOracle.sol* ( [#L19-L20](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L19-L20) ):

```solidity
19:   /// @notice Retrieve RWA price data
20:   function getPrice() external view returns (uint256);
```

- *RWADynamicOracle.sol* ( [#L89-L110](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L89-L110), [#L256-L265](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L256-L265), [#L276-L282](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L276-L282), [#L345-L349](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L345-L349), [#L400](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L400), [#L404](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L404) ):

```solidity
89:   /**
90:    * @notice External helper function used to simulate the derivation of the prices returned
91:    *         from the oracle, given a range and a timestamp
92:    *
93:    * @dev If you are simulating the first range, you MUST set `startTime` and `rangeStartPrice`
94:    * @dev If you are simulating a range > 1st then `startTime` and `rangeStartPrice` values
95:    *      remain unused.
96:    *
97:    * @param blockTimeStamp  The unixTimestamp of the point in time you wish to simulate
98:    * @param dailyIR         The daily Interest Rate for the range to simulate
99:    * @param endTime         The end time for the range to simulate
100:    * @param startTime       The start time for the range to simulate
101:    * @param rangeStartPrice The start price for the range to simulate
102:    *
103:    */
104:   function simulateRange(
105:     uint256 blockTimeStamp,
106:     uint256 dailyIR,
107:     uint256 endTime,
108:     uint256 startTime,
109:     uint256 rangeStartPrice
110:   ) external view returns (uint256 price) {

256:   /**
257:    * @notice Internal helper function used to derive the price of USDY
258:    *
259:    * @param currentRange The current range to derive the price of USDY from
260:    * @param currentTime  The current unixTimestamp of the blockchain
261:    */
262:   function derivePrice(
263:     Range memory currentRange,
264:     uint256 currentTime
265:   ) internal pure returns (uint256 price) {

276:   /**
277:    * @notice internal function that will round derived price to the 8th decimal
278:    *         and will round 5 up
279:    *
280:    * @param value The value to round
281:    */
282:   function roundUpTo8(uint256 value) internal pure returns (uint256) {

345:   function _rpow(
346:     uint256 x,
347:     uint256 n,
348:     uint256 base
349:   ) internal pure returns (uint256 z) {

400:   function _rmul(uint256 x, uint256 y) internal pure returns (uint256 z) {

404:   function _mul(uint256 x, uint256 y) internal pure returns (uint256 z) {
```

- *rUSDY.sol* ( [#L314-L330](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L314-L330), [#L339-L356](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L339-L356), [#L534-L546](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L534-L546), [#L565-L578](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L565-L578) ):

```solidity
314:   /**
315:    * @notice Atomically increases the allowance granted to `_spender` by the caller by `_addedValue`.
316:    *
317:    * This is an alternative to `approve` that can be used as a mitigation for
318:    * problems described in:
319:    * https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol#L42
320:    * Emits an `Approval` event indicating the updated allowance.
321:    *
322:    * Requirements:
323:    *
324:    * - `_spender` cannot be the the zero address.
325:    * - the contract must not be paused.
326:    */
327:   function increaseAllowance(
328:     address _spender,
329:     uint256 _addedValue
330:   ) public returns (bool) {

339:   /**
340:    * @notice Atomically decreases the allowance granted to `_spender` by the caller by `_subtractedValue`.
341:    *
342:    * This is an alternative to `approve` that can be used as a mitigation for
343:    * problems described in:
344:    * https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol#L42
345:    * Emits an `Approval` event indicating the updated allowance.
346:    *
347:    * Requirements:
348:    *
349:    * - `_spender` cannot be the zero address.
350:    * - `_spender` must have allowance for the caller of at least `_subtractedValue`.
351:    * - the contract must not be paused.
352:    */
353:   function decreaseAllowance(
354:     address _spender,
355:     uint256 _subtractedValue
356:   ) public returns (bool) {

534:   /**
535:    * @notice Creates `_sharesAmount` shares and assigns them to `_recipient`, increasing the total amount of shares.
536:    * @dev This doesn't increase the token total supply.
537:    *
538:    * Requirements:
539:    *
540:    * - `_recipient` cannot be the zero address.
541:    * - the contract must not be paused.
542:    */
543:   function _mintShares(
544:     address _recipient,
545:     uint256 _sharesAmount
546:   ) internal whenNotPaused returns (uint256) {

565:   /**
566:    * @notice Destroys `_sharesAmount` shares from `_account`'s holdings, decreasing the total amount of shares.
567:    * @dev This doesn't decrease the token total supply.
568:    *
569:    * Requirements:
570:    *
571:    * - `_account` cannot be the zero address.
572:    * - `_account` must hold at least `_sharesAmount` shares.
573:    * - the contract must not be paused.
574:    */
575:   function _burnShares(
576:     address _account,
577:     uint256 _sharesAmount
578:   ) internal whenNotPaused returns (uint256) {
```

- *rUSDYFactory.sol* ( [#L115-L128](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L115-L128) ):

```solidity
115:   /**
116:    * @notice Allows for arbitrary batched calls
117:    *
118:    * @dev All external calls made through this function will
119:    *      msg.sender == contract address
120:    *
121:    * @param exCallData Struct consisting of
122:    *       1) target - contract to call
123:    *       2) data - data to call target with
124:    *       3) value - eth value to call target with
125:    */
126:   function multiexcall(
127:     ExCallData[] calldata exCallData
128:   ) external payable override onlyGuardian returns (bytes[] memory results) {
```

</details>

### <a name="N-32"></a>[N-32] Contract uses both `require()`/`revert()` as well as custom errors

Consider using just one method in a single file.

There are 3 instances:

- *SourceBridge.sol* ( [#L11](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L11) ):

```solidity
11: contract SourceBridge is Ownable, Pausable, IMulticall {
```

- *RWADynamicOracle.sol* ( [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L22) ):

```solidity
22: contract RWADynamicOracle is IRWAOracle, AccessControlEnumerable, Pausable {
```

- *rUSDY.sol* ( [#L57](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L57) ):

```solidity
57: contract rUSDY is
```

### <a name="N-33"></a>[N-33] Non-assembly method available

There are some automated tools that will flag a project as having higher complexity if there is inline-assembly, so it's best to avoid using it where it's not necessary. In addition, most assembly methods can be replaced by non-assembly methods, for example:
- `assembly{ g := gas() }` => `uint256 g = gasleft()`
- `assembly{ id := chainid() }` => `uint256 id = block.chainid`
- `assembly { r := mulmod(a, b, d) }` => `uint256 m = mulmod(x, y, k)`
- `assembly { size := extcodesize() }` => `uint256 size = address(a).code.length`
- etc.

There are 4 instances:

- *RWADynamicOracle.sol* ( [#L377](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L377), [#L381](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L381), [#L387](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L387), [#L391](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L391) ):

```solidity
377:             revert(0, 0)

381:             revert(0, 0)

387:               revert(0, 0)

391:               revert(0, 0)
```

### <a name="N-34"></a>[N-34] The `override` keyword should not be omitted

Although the `override` keyword is not required when overriding an interface function after Solidity 0.8.8, it is recommended not to omit it for code clarity, ease of maintenance and to avoid misunderstandings.

There are 10 instances:

- *RWADynamicOracle.sol* ( [#L58-L61](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L58-L61) ):

```solidity
58:   function getPriceData()
59:     external
60:     view
61:     returns (uint256 price, uint256 timestamp)
```

- *rUSDY.sol* ( [#L194](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L194), [#L202](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L202), [#L209](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L209), [#L216](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L216), [#L226](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L226), [#L245](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L245), [#L256-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L256-L259), [#L276](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L276), [#L301-L305](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L301-L305) ):

```solidity
194:   function name() public pure returns (string memory) {

202:   function symbol() public pure returns (string memory) {

209:   function decimals() public pure returns (uint8) {

216:   function totalSupply() public view returns (uint256) {

226:   function balanceOf(address _account) public view returns (uint256) {

245:   function transfer(address _recipient, uint256 _amount) public returns (bool) {

256:   function allowance(
257:     address _owner,
258:     address _spender
259:   ) public view returns (uint256) {

276:   function approve(address _spender, uint256 _amount) public returns (bool) {

301:   function transferFrom(
302:     address _sender,
303:     address _recipient,
304:     uint256 _amount
305:   ) public returns (bool) {
```

### <a name="N-35"></a>[N-35] Missing zero address check in functions with address parameters

Adding a zero address check for each address type parameter can prevent errors.

<details>
<summary>There are 55 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L55-L63](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L55-L63), [#L210](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L210), [#L220](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L220), [#L322](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L322) ):

```solidity
/// @audit `_token not checked`
/// @audit `_allowlist not checked`
/// @audit `_ondoApprover not checked`
/// @audit `_owner not checked`
55:   constructor(
56:     address _token,
57:     address _axelarGateway,
58:     address _allowlist,
59:     address _ondoApprover,
60:     address _owner,
61:     uint256 _mintLimit,
62:     uint256 _mintDuration
63:   )

/// @audit `approver not checked`
210:   function addApprover(address approver) external onlyOwner {

/// @audit `approver not checked`
220:   function removeApprover(address approver) external onlyOwner {

/// @audit `_token not checked`
322:   function rescueTokens(address _token) external onlyOwner {
```

- *SourceBridge.sol* ( [#L40-L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L40-L45), [#L121-L124](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L121-L124) ):

```solidity
/// @audit `_token not checked`
/// @audit `_axelarGateway not checked`
/// @audit `_gasService not checked`
/// @audit `owner not checked`
40:   constructor(
41:     address _token,
42:     address _axelarGateway,
43:     address _gasService,
44:     address owner
45:   ) {

/// @audit `contractAddress not checked`
121:   function setDestinationChainContractAddress(
122:     string memory destinationChain,
123:     address contractAddress
124:   ) external onlyOwner {
```

- *RWADynamicOracle.sol* ( [#L30-L38](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L30-L38) ):

```solidity
/// @audit `admin not checked`
/// @audit `setter not checked`
/// @audit `pauser not checked`
30:   constructor(
31:     address admin,
32:     address setter,
33:     address pauser,
34:     uint256 firstRangeStart,
35:     uint256 firstRangeEnd,
36:     uint256 dailyIR,
37:     uint256 startPrice
38:   ) {
```

- *rUSDY.sol* ( [#L109-L116](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L109-L116), [#L120-L127](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L120-L127), [#L134-L138](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L134-L138), [#L226](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L226), [#L245](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L245), [#L256-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L256-L259), [#L276](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L276), [#L301-L305](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L301-L305), [#L327-L330](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L327-L330), [#L353-L356](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L353-L356), [#L381](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L381), [#L416-L419](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L416-L419), [#L463-L467](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L463-L467), [#L500](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L500), [#L662](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L662), [#L672-L675](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L672-L675), [#L698-L700](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L698-L700), [#L709-L711](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L709-L711), [#L720-L722](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L720-L722) ):

```solidity
/// @audit `blocklist not checked`
/// @audit `allowlist not checked`
/// @audit `sanctionsList not checked`
/// @audit `_usdy not checked`
/// @audit `guardian not checked`
/// @audit `_oracle not checked`
109:   function initialize(
110:     address blocklist,
111:     address allowlist,
112:     address sanctionsList,
113:     address _usdy,
114:     address guardian,
115:     address _oracle
116:   ) public virtual initializer {

/// @audit `blocklist not checked`
/// @audit `allowlist not checked`
/// @audit `sanctionsList not checked`
/// @audit `_usdy not checked`
/// @audit `guardian not checked`
/// @audit `_oracle not checked`
120:   function __rUSDY_init(
121:     address blocklist,
122:     address allowlist,
123:     address sanctionsList,
124:     address _usdy,
125:     address guardian,
126:     address _oracle
127:   ) internal onlyInitializing {

/// @audit `_usdy not checked`
/// @audit `guardian not checked`
/// @audit `_oracle not checked`
134:   function __rUSDY_init_unchained(
135:     address _usdy,
136:     address guardian,
137:     address _oracle
138:   ) internal onlyInitializing {

/// @audit `_account not checked`
226:   function balanceOf(address _account) public view returns (uint256) {

/// @audit `_recipient not checked`
245:   function transfer(address _recipient, uint256 _amount) public returns (bool) {

/// @audit `_owner not checked`
/// @audit `_spender not checked`
256:   function allowance(
257:     address _owner,
258:     address _spender
259:   ) public view returns (uint256) {

/// @audit `_spender not checked`
276:   function approve(address _spender, uint256 _amount) public returns (bool) {

/// @audit `_sender not checked`
/// @audit `_recipient not checked`
301:   function transferFrom(
302:     address _sender,
303:     address _recipient,
304:     uint256 _amount
305:   ) public returns (bool) {

/// @audit `_spender not checked`
327:   function increaseAllowance(
328:     address _spender,
329:     uint256 _addedValue
330:   ) public returns (bool) {

/// @audit `_spender not checked`
353:   function decreaseAllowance(
354:     address _spender,
355:     uint256 _subtractedValue
356:   ) public returns (bool) {

/// @audit `_account not checked`
381:   function sharesOf(address _account) public view returns (uint256) {

/// @audit `_recipient not checked`
416:   function transferShares(
417:     address _recipient,
418:     uint256 _sharesAmount
419:   ) public returns (uint256) {

/// @audit `_sender not checked`
/// @audit `_recipient not checked`
463:   function _transfer(
464:     address _sender,
465:     address _recipient,
466:     uint256 _amount
467:   ) internal {

/// @audit `_account not checked`
500:   function _sharesOf(address _account) internal view returns (uint256) {

/// @audit `_oracle not checked`
662:   function setOracle(address _oracle) external onlyRole(USDY_MANAGER_ROLE) {

/// @audit `_account not checked`
672:   function burn(
673:     address _account,
674:     uint256 _amount
675:   ) external onlyRole(BURNER_ROLE) {

/// @audit `blocklist not checked`
698:   function setBlocklist(
699:     address blocklist
700:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

/// @audit `allowlist not checked`
709:   function setAllowlist(
710:     address allowlist
711:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

/// @audit `sanctionsList not checked`
720:   function setSanctionsList(
721:     address sanctionsList
722:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {
```

- *rUSDYFactory.sol* ( [#L51](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L51), [#L75-L81](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L75-L81) ):

```solidity
/// @audit `_guardian not checked`
51:   constructor(address _guardian) {

/// @audit `blocklist not checked`
/// @audit `allowlist not checked`
/// @audit `sanctionsList not checked`
/// @audit `usdy not checked`
/// @audit `oracle not checked`
75:   function deployrUSDY(
76:     address blocklist,
77:     address allowlist,
78:     address sanctionsList,
79:     address usdy,
80:     address oracle
81:   ) external onlyGuardian returns (address, address, address) {
```

</details>

### <a name="N-36"></a>[N-36] Contract functions should use an `interface`

All `external`/`public` functions should extend an `interface`. This is useful to make sure that the whole API is extracted.

<details>
<summary>There are 36 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L197](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L197), [#L210](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L210), [#L220](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L220), [#L234-L237](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L234-L237), [#L255-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L255-L259), [#L286](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L286), [#L295](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L295), [#L304](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L304), [#L313](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L313), [#L322](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L322), [#L361](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L361) ):

```solidity
197:   function approve(bytes32 txnHash) external {

210:   function addApprover(address approver) external onlyOwner {

220:   function removeApprover(address approver) external onlyOwner {

234:   function addChainSupport(
235:     string calldata srcChain,
236:     string calldata srcContractAddress
237:   ) external onlyOwner {

255:   function setThresholds(
256:     string calldata srcChain,
257:     uint256[] calldata amounts,
258:     uint256[] calldata numOfApprovers
259:   ) external onlyOwner {

286:   function setMintLimit(uint256 mintLimit) external onlyOwner {

295:   function setMintLimitDuration(uint256 mintDuration) external onlyOwner {

304:   function pause() external onlyOwner {

313:   function unpause() external onlyOwner {

322:   function rescueTokens(address _token) external onlyOwner {

361:   function getNumApproved(bytes32 txnHash) external view returns (uint256) {
```

- *SourceBridge.sol* ( [#L61-L64](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L61-L64), [#L121-L124](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L121-L124), [#L136](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L136), [#L145](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L145) ):

```solidity
61:   function burnAndCallAxelar(
62:     uint256 amount,
63:     string calldata destinationChain
64:   ) external payable whenNotPaused {

121:   function setDestinationChainContractAddress(
122:     string memory destinationChain,
123:     address contractAddress
124:   ) external onlyOwner {

136:   function pause() external onlyOwner {

145:   function unpause() external onlyOwner {
```

- *RWADynamicOracle.sol* ( [#L75](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L75), [#L104-L110](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L104-L110), [#L151-L154](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L151-L154), [#L186-L192](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L186-L192), [#L241](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L241), [#L248](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L248) ):

```solidity
75:   function getPrice() public view whenNotPaused returns (uint256 price) {

104:   function simulateRange(
105:     uint256 blockTimeStamp,
106:     uint256 dailyIR,
107:     uint256 endTime,
108:     uint256 startTime,
109:     uint256 rangeStartPrice
110:   ) external view returns (uint256 price) {

151:   function setRange(
152:     uint256 endTimestamp,
153:     uint256 dailyInterestRate
154:   ) external onlyRole(SETTER_ROLE) {

186:   function overrideRange(
187:     uint256 indexToModify,
188:     uint256 newStart,
189:     uint256 newEnd,
190:     uint256 newDailyIR,
191:     uint256 newPrevRangeClosePrice
192:   ) external onlyRole(DEFAULT_ADMIN_ROLE) {

241:   function pauseOracle() external onlyRole(PAUSER_ROLE) {

248:   function unpauseOracle() external onlyRole(DEFAULT_ADMIN_ROLE) {
```

- *rUSDY.sol* ( [#L109-L116](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L109-L116), [#L327-L330](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L327-L330), [#L353-L356](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L353-L356), [#L372](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L372), [#L381](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L381), [#L388-L390](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L388-L390), [#L397](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L397), [#L416-L419](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L416-L419), [#L434](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L434), [#L449](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L449), [#L662](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L662), [#L672-L675](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L672-L675), [#L685](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L685), [#L689](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L689) ):

```solidity
109:   function initialize(
110:     address blocklist,
111:     address allowlist,
112:     address sanctionsList,
113:     address _usdy,
114:     address guardian,
115:     address _oracle
116:   ) public virtual initializer {

327:   function increaseAllowance(
328:     address _spender,
329:     uint256 _addedValue
330:   ) public returns (bool) {

353:   function decreaseAllowance(
354:     address _spender,
355:     uint256 _subtractedValue
356:   ) public returns (bool) {

372:   function getTotalShares() public view returns (uint256) {

381:   function sharesOf(address _account) public view returns (uint256) {

388:   function getSharesByRUSDY(
389:     uint256 _rUSDYAmount
390:   ) public view returns (uint256) {

397:   function getRUSDYByShares(uint256 _shares) public view returns (uint256) {

416:   function transferShares(
417:     address _recipient,
418:     uint256 _sharesAmount
419:   ) public returns (uint256) {

434:   function wrap(uint256 _USDYAmount) external whenNotPaused {

449:   function unwrap(uint256 _rUSDYAmount) external whenNotPaused {

662:   function setOracle(address _oracle) external onlyRole(USDY_MANAGER_ROLE) {

672:   function burn(
673:     address _account,
674:     uint256 _amount
675:   ) external onlyRole(BURNER_ROLE) {

685:   function pause() external onlyRole(PAUSER_ROLE) {

689:   function unpause() external onlyRole(USDY_MANAGER_ROLE) {
```

- *rUSDYFactory.sol* ( [#L75-L81](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L75-L81) ):

```solidity
75:   function deployrUSDY(
76:     address blocklist,
77:     address allowlist,
78:     address sanctionsList,
79:     address usdy,
80:     address oracle
81:   ) external onlyGuardian returns (address, address, address) {
```

</details>

### <a name="N-37"></a>[N-37] Constants should be put on the left side of comparisons

Putting constants on the left side of comparison statements is a best practice known as [Yoda conditions](https://en.wikipedia.org/wiki/Yoda_conditions).
Although solidity's static typing system prevents accidental assignments within conditionals, adopting this practice can improve code readability and consistency, especially when working across multiple languages.

<details>
<summary>There are 18 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L93](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L93), [#L96](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L96), [#L144](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L144), [#L265](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L265) ):

```solidity
/// @audit put `VERSION` on the left
93:     if (version != VERSION) {

/// @audit put `bytes32(0)` on the left
96:     if (chainToApprovedSender[srcChain] == bytes32(0)) {

/// @audit put `0` on the left
144:     if (txnToThresholdSet[txnHash].numberOfApprovalsNeeded == 0) {

/// @audit put `0` on the left
265:       if (i == 0) {
```

- *SourceBridge.sol* ( [#L68](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L68), [#L72](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L72) ):

```solidity
/// @audit put `0` on the left
68:     if (bytes(destContract).length == 0) {

/// @audit put `0` on the left
72:     if (msg.value == 0) {
```

- *RWADynamicOracle.sol* ( [#L198](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L198), [#L218](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L218), [#L284](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L284), [#L405](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L405) ):

```solidity
/// @audit put `0` on the left
198:     if (indexToModify == 0) {

/// @audit put `0` on the left
218:     if (indexToModify == 0) {

/// @audit put `0.5e10` on the left
284:     if (remainder >= 0.5e10) {

/// @audit put `0` on the left
405:     require(y == 0 || (z = x * y) / y == x);
```

- *rUSDY.sol* ( [#L490](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L490), [#L491](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L491), [#L519](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L519), [#L520](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L520), [#L547](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L547), [#L579](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L579), [#L642](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L642), [#L649](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L649) ):

```solidity
/// @audit put `address(0)` on the left
490:     require(_owner != address(0), "APPROVE_FROM_ZERO_ADDRESS");

/// @audit put `address(0)` on the left
491:     require(_spender != address(0), "APPROVE_TO_ZERO_ADDRESS");

/// @audit put `address(0)` on the left
519:     require(_sender != address(0), "TRANSFER_FROM_THE_ZERO_ADDRESS");

/// @audit put `address(0)` on the left
520:     require(_recipient != address(0), "TRANSFER_TO_THE_ZERO_ADDRESS");

/// @audit put `address(0)` on the left
547:     require(_recipient != address(0), "MINT_TO_THE_ZERO_ADDRESS");

/// @audit put `address(0)` on the left
579:     require(_account != address(0), "BURN_FROM_THE_ZERO_ADDRESS");

/// @audit put `address(0)` on the left
642:     if (from != address(0)) {

/// @audit put `address(0)` on the left
649:     if (to != address(0)) {
```

</details>

### <a name="N-38"></a>[N-38] Put all system-wide constants in one file

Putting all the system-wide constants in a single file improves code readability, makes it easier to understand the basic configuration and limitations of the system, and makes maintenance easier.

There are 12 instances:

- *DestinationBridge.sol* ( [#L48](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L48) ):

```solidity
48:   bytes32 public constant VERSION = "1.0";
```

- *SourceBridge.sol* ( [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L27) ):

```solidity
27:   bytes32 public constant VERSION = "1.0";
```

- *RWADynamicOracle.sol* ( [#L23](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L23), [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L27), [#L28](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L28) ):

```solidity
23:   uint256 public constant DAY = 1 days;

27:   bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");

28:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
```

- *rUSDY.sol* ( [#L91](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L91), [#L97](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L97), [#L98](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L98), [#L99](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L99), [#L100](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L100), [#L101-L102](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L101-L102) ):

```solidity
91:   uint256 public constant BPS_DENOMINATOR = 10_000;

97:   bytes32 public constant USDY_MANAGER_ROLE = keccak256("ADMIN_ROLE");

98:   bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

99:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

100:   bytes32 public constant BURNER_ROLE = keccak256("BURN_ROLE");

101:   bytes32 public constant LIST_CONFIGURER_ROLE =
102:     keccak256("LIST_CONFIGURER_ROLE");
```

- *rUSDYFactory.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L44) ):

```solidity
44:   bytes32 public constant DEFAULT_ADMIN_ROLE = bytes32(0);
```

### <a name="N-39"></a>[N-39] `else`-block not required

One level of nesting can be removed by not having an `else` block when the `if`-block always jumps at the end. For example:
```solidity
if (condition) {
    body1...
    return x;
} else {
    body2...
}
```
can be changed to:
```solidity
if (condition) {
    body1...
    return x;
}
body2...
```

There are 3 instances:

- *DestinationBridge.sol* ( [#L179-L181](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L179-L181) ):

```solidity
179:     if (t.numberOfApprovalsNeeded <= t.approvers.length) {
180:       return true;
181:     } else {
```

- *RWADynamicOracle.sol* ( [#L80-L82](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L80-L82), [#L132-L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L132-L134) ):

```solidity
80:         if (range.end <= block.timestamp) {
81:           return derivePrice(range, range.end - 1);
82:         } else {

132:         if (range.end <= blockTimeStamp) {
133:           return derivePrice(range, range.end - 1);
134:         } else {
```

### <a name="N-40"></a>[N-40] Use scientific notation (e.g. `1e18`) rather than exponentiation (e.g. `10**18`)

While the compiler knows to optimize away the exponentiation, it's still better coding practice to use idioms that do not require compiler optimization, if they exist.

There is 1 instance:

- *RWADynamicOracle.sol* ( [#L343](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L343) ):

```solidity
343:   uint256 private constant ONE = 10 ** 27;
```

### <a name="N-41"></a>[N-41] Large multiples of ten should use scientific notation

Use a scientific notation rather than decimal literals (e.g. `1e6` instead of `1000000`), for better code readability.

There is 1 instance:

- *rUSDY.sol* ( [#L91](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L91) ):

```solidity
/// @audit 10_000 -> 1e4
91:   uint256 public constant BPS_DENOMINATOR = 10_000;
```

### <a name="N-42"></a>[N-42] SPDX identifier should be the in the first line of a solidity file

There is 1 instance:

- [*SourceBridge.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol)

### <a name="N-43"></a>[N-43] Control structures do not follow the Solidity Style Guide

Refer to the [Solidity style guide - Control Structures](https://docs.soliditylang.org/en/v0.8.20/style-guide.html#control-structures).

There are 11 instances:

- *DestinationBridge.sol* ( [#L27-L32](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L27-L32) ):

```solidity
27: contract DestinationBridge is
28:   AxelarExecutable,
29:   MintTimeBasedRateLimiter,
30:   Ownable,
31:   Pausable
32: {
```

- *RWADynamicOracle.sol* ( [#L43](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L43), [#L58-L62](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L58-L62), [#L158](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L158), [#L194](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L194), [#L201](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L201), [#L207](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L207), [#L212](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L212), [#L214](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L214) ):

```solidity
43:     if (firstRangeStart >= firstRangeEnd) revert InvalidRange();

58:   function getPriceData()
59:     external
60:     view
61:     returns (uint256 price, uint256 timestamp)
62:   {

158:     if (lastRange.end >= endTimestamp) revert InvalidRange();

194:     if (newStart >= newEnd) revert InvalidRange();

201:       if (rangeLength > 1 && newEnd > ranges[indexToModify + 1].start)

207:       if (newStart < ranges[indexToModify - 1].end) revert InvalidRange();

212:       if (newStart < ranges[indexToModify - 1].end) revert InvalidRange();

214:       if (newEnd > ranges[indexToModify + 1].start) revert InvalidRange();
```

- *rUSDY.sol* ( [#L57-L67](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L57-L67), [#L452](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L452) ):

```solidity
57: contract rUSDY is
58:   Initializable,
59:   ContextUpgradeable,
60:   PausableUpgradeable,
61:   AccessControlEnumerableUpgradeable,
62:   BlocklistClientUpgradeable,
63:   AllowlistClientUpgradeable,
64:   SanctionsListClientUpgradeable,
65:   IERC20Upgradeable,
66:   IERC20MetadataUpgradeable
67: {

452:     if (usdyAmount < BPS_DENOMINATOR) revert UnwrapTooSmall();
```

### <a name="N-44"></a>[N-44] Contract name does not follow the Solidity Style Guide

According to the [Solidity Style Guide](https://docs.soliditylang.org/en/latest/style-guide.html#contract-and-library-names), contracts and libraries should be named using the CapWords style and match their filenames.

There are 2 instances:

- *rUSDY.sol* ( [#L57](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L57) ):

```solidity
57: contract rUSDY is
```

- *rUSDYFactory.sol* ( [#L43](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L43) ):

```solidity
43: contract rUSDYFactory is IMulticall {
```

### <a name="N-45"></a>[N-45] Functions and modifiers should be named in mixedCase style

As the [Solidity Style Guide](https://docs.soliditylang.org/en/v0.8.21/style-guide.html#function-names) suggests: functions and modifiers should be named in mixedCase style.

There are 3 instances:

- *rUSDY.sol* ( [#L120](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L120), [#L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L134), [#L397](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L397) ):

```solidity
120:   function __rUSDY_init(

134:   function __rUSDY_init_unchained(

397:   function getRUSDYByShares(uint256 _shares) public view returns (uint256) {
```

### <a name="N-46"></a>[N-46] Variable names for `immutable`s should use UPPER_CASE_WITH_UNDERSCORES

For `immutable` variable names, each word should use all capital letters, with underscores separating each word (UPPER_CASE_WITH_UNDERSCORES)

There is 1 instance:

- *rUSDYFactory.sol* ( [#L46](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L46) ):

```solidity
46:   address internal immutable guardian;
```

### <a name="N-47"></a>[N-47] Order of contract layout does not follow the Solidity Style Guide

As suggested by the [Solidity Style Guide](https://docs.soliditylang.org/en/v0.8.20/style-guide.html#order-of-layout):
- Layout contract elements in the following order: `pragma statements`, `import statements`, `interfaces`, `libraries`, `contracts`.
- Inside each contract, library or interface, use the following order: `type declarations`, `state variables`, `events`, `errors`, `modifiers`, `functions`.

There are 7 instances:

- *DestinationBridge.sol* ( [#L389](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L389) ):

```solidity
/// @audit ↑ Out of order with function getNumApproved()
389:   event ApproverRemoved(address approver);
```

- *SourceBridge.sol* ( [#L183](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L183) ):

```solidity
/// @audit ↑ Out of order with function multiexcall()
183:   event DestinationChainContractAddressSet(
```

- *RWADynamicOracle.sol* ( [#L309](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L309), [#L343](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L343) ):

```solidity
/// @audit ↑ Out of order with function roundUpTo8()
309:   event RangeSet(

/// @audit ↑ Out of order with error PriceNotSet
343:   uint256 private constant ONE = 10 ** 27;
```

- *rUSDY.sol* ( [#L97](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L97), [#L154](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L154) ):

```solidity
/// @audit ↑ Out of order with error UnwrapTooSmall
97:   bytes32 public constant USDY_MANAGER_ROLE = keccak256("ADMIN_ROLE");

/// @audit ↑ Out of order with function __rUSDY_init_unchained()
154:   event TransferShares(
```

- *rUSDYFactory.sol* ( [#L146](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L146) ):

```solidity
/// @audit ↑ Out of order with function multiexcall()
146:   event rUSDYDeployed(
```

### <a name="N-48"></a>[N-48] Whitespace in Expressions

See the [Whitespace in Expressions](https://docs.soliditylang.org/en/latest/style-guide.html#whitespace-in-expressions) section of the Solidity Style Guide.

<details>
<summary>There are 40 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L4](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L4), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L5), [#L6](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L6), [#L9](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L9) ):

```solidity
/// @audit Whitespace before a comma
4:    ╓██▀└ ,╓▄▄▄, '▀██▄

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
6:  ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,

/// @audit Whitespace before a comma
9: ╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
```

- *IRWADynamicOracle.sol* ( [#L4](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L4), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L5), [#L6](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L6), [#L9](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L9) ):

```solidity
/// @audit Whitespace before a comma
4:    ╓██▀└ ,╓▄▄▄, '▀██▄

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
6:  ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,

/// @audit Whitespace before a comma
9: ╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
```

- *RWADynamicOracle.sol* ( [#L4](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L4), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L5), [#L6](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L6), [#L9](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L9) ):

```solidity
/// @audit Whitespace before a comma
4:    ╓██▀└ ,╓▄▄▄, '▀██▄

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
6:  ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,

/// @audit Whitespace before a comma
9: ╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
```

- *rUSDY.sol* ( [#L4](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L4), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L5), [#L6](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L6), [#L9](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L9) ):

```solidity
/// @audit Whitespace before a comma
4:    ╓██▀└ ,╓▄▄▄, '▀██▄

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
6:  ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,

/// @audit Whitespace before a comma
9: ╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
```

- *rUSDYFactory.sol* ( [#L4](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L4), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L5), [#L5](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L5), [#L6](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L6), [#L9](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L9) ):

```solidity
/// @audit Whitespace before a comma
4:    ╓██▀└ ,╓▄▄▄, '▀██▄

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
5:   ██▀ ▄██▀▀╙╙▀▀██▄ └██µ           ,,       ,,      ,     ,,,            ,,,

/// @audit Whitespace before a comma
6:  ██ ,██¬ ▄████▄  ▀█▄ ╙█▄      ▄███▀▀███▄   ███▄    ██  ███▀▀▀███▄    ▄███▀▀███,

/// @audit Whitespace before a comma
9: ╟█  ██ ╙██    ▄█▀ ▐█▌ ██     ╙██      ██▌  ██   ╙████  ██▌    ▄██▀  ██▌     ,██▀
```

</details>

### <a name="N-49"></a>[N-49] High cyclomatic complexity

Consider breaking down these blocks into more manageable units, by splitting things into utility functions, by reducing nesting, and by using early returns.

There is 1 instance:

- *RWADynamicOracle.sol* ( [#L186-L236](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L186-L236) ):

```solidity
186:   function overrideRange(
187:     uint256 indexToModify,
188:     uint256 newStart,
189:     uint256 newEnd,
190:     uint256 newDailyIR,
191:     uint256 newPrevRangeClosePrice
192:   ) external onlyRole(DEFAULT_ADMIN_ROLE) {
193:     // Check that the ranges start and end time are less than each other
194:     if (newStart >= newEnd) revert InvalidRange();
195: 
196:     uint256 rangeLength = ranges.length;
197:     // Case 1: The range being modified is the first range
198:     if (indexToModify == 0) {
199:       // If the length of ranges is greater than 1,
200:       // Ensure that the newEnd time is not greater than the start time of the next range
201:       if (rangeLength > 1 && newEnd > ranges[indexToModify + 1].start)
202:         revert InvalidRange();
203:     }
204:     // Case 2: The range being modified is the last range
205:     else if (indexToModify == rangeLength - 1) {
206:       // Ensure that the newStart time is not less than the end time of the previous range
207:       if (newStart < ranges[indexToModify - 1].end) revert InvalidRange();
208:     }
209:     // Case 3: The range being modified is between first and last range
210:     else {
......
212:       if (newStart < ranges[indexToModify - 1].end) revert InvalidRange();
213:       // Ensure that the newEnd time is not greater than the start time of the next range
214:       if (newEnd > ranges[indexToModify + 1].start) revert InvalidRange();
215:     }
216: 
217:     // Update range
218:     if (indexToModify == 0) {
219:       uint256 trueStart = (newPrevRangeClosePrice * ONE) / newDailyIR;
220:       ranges[indexToModify] = Range(newStart, newEnd, newDailyIR, trueStart);
221:     } else {
222:       ranges[indexToModify] = Range(
223:         newStart,
224:         newEnd,
225:         newDailyIR,
226:         newPrevRangeClosePrice
227:       );
228:     }
229:     emit RangeOverriden(
230:       indexToModify,
231:       newStart,
232:       newEnd,
233:       newDailyIR,
234:       newPrevRangeClosePrice
235:     );
236:   }
```

### <a name="N-50"></a>[N-50] Typos

There are 6 instances:

- *DestinationBridge.sol* ( [#L79](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L79), [#L228](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L228) ):

```solidity
/// @audit overriden
79:    * @notice Internal overriden function that is executed when contract is called by Axelar Gateway

/// @audit initalize
228:    * @notice This will initalize a nested mapping in which spent nonces from this `srcAddress`
```

- *RWADynamicOracle.sol* ( [#L182](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L182), [#L229](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L229), [#L318](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L318), [#L326](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L326) ):

```solidity
/// @audit overriden
182:    * @dev This function enforces that the range being overriden does not

/// @audit Overriden
229:     emit RangeOverriden(

/// @audit overriden
318:    * @notice Event emitted when a previously set range is overriden

/// @audit Overriden
326:   event RangeOverriden(
```

### <a name="N-51"></a>[N-51] Consider bounding input array length

The functions below take in an unbounded array, and make function calls for entries in the array. While the function will revert if it eventually runs out of gas, it may be a nicer user experience to require() that the length of the array is below some reasonable maximum, so that the user doesn't have to use up a full transaction's gas only to see that the transaction reverts.

There are 3 instances:

- *DestinationBridge.sol* ( [#L264](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L264) ):

```solidity
264:     for (uint256 i = 0; i < amounts.length; ++i) {
```

- *SourceBridge.sol* ( [#L164](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L164) ):

```solidity
164:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

- *rUSDYFactory.sol* ( [#L130](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L130) ):

```solidity
130:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

### <a name="N-52"></a>[N-52] Unused contract variables

The following state variables are defined but not used.
It is recommended to check the code for logical omissions that cause them not to be used. If it's determined that they are not needed anywhere, it's best to remove them from the codebase to improve code clarity and minimize confusion.

There are 2 instances:

- *DestinationBridge.sol* ( [#L37](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L37) ):

```solidity
37:   IAxelarGateway public immutable AXELAR_GATEWAY;
```

- *rUSDYFactory.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L44) ):

```solidity
44:   bytes32 public constant DEFAULT_ADMIN_ROLE = bytes32(0);
```

### <a name="N-53"></a>[N-53] Unused named return

Declaring named returns, but not using them, is confusing to the reader. Consider either completely removing them (by declaring just the type without a name), or remove the return statement and do a variable assignment. This would improve the readability of the code, and it may also help reduce regressions during future code refactors.

There are 3 instances:

- *RWADynamicOracle.sol* ( [#L75](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L75), [#L104-L110](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L104-L110), [#L262-L265](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L262-L265) ):

```solidity
/// @audit price
75:   function getPrice() public view whenNotPaused returns (uint256 price) {

/// @audit price
104:   function simulateRange(
105:     uint256 blockTimeStamp,
106:     uint256 dailyIR,
107:     uint256 endTime,
108:     uint256 startTime,
109:     uint256 rangeStartPrice
110:   ) external view returns (uint256 price) {

/// @audit price
262:   function derivePrice(
263:     Range memory currentRange,
264:     uint256 currentTime
265:   ) internal pure returns (uint256 price) {
```

### <a name="N-54"></a>[N-54] Named mappings are recommended

[Named mappings](https://docs.soliditylang.org/en/v0.8.18/types.html#mapping-types) (with syntax `mapping(KeyType KeyName? => ValueType ValueName?)`) are recommended.It can make the mapping variables clearer, more readable and easier to maintain.

There are 11 instances:

- *DestinationBridge.sol* ( [#L43](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L43), [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L44), [#L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L45), [#L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L45), [#L51](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L51), [#L52](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L52), [#L53](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L53) ):

```solidity
43:   mapping(address => bool) public approvers;

44:   mapping(string => bytes32) public chainToApprovedSender;

45:   mapping(bytes32 => mapping(uint256 => bool)) public isSpentNonce;

45:   mapping(bytes32 => mapping(uint256 => bool)) public isSpentNonce;

51:   mapping(bytes32 => TxnThreshold) public txnToThresholdSet;

52:   mapping(string => Threshold[]) public chainToThresholds;

53:   mapping(bytes32 => Transaction) public txnHashToTransaction;
```

- *SourceBridge.sol* ( [#L15](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L15) ):

```solidity
15:   mapping(string => string) public destChainToContractAddr;
```

- *rUSDY.sol* ( [#L76](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L76), [#L79](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L79), [#L79](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L79) ):

```solidity
76:   mapping(address => uint256) private shares;

79:   mapping(address => mapping(address => uint256)) private allowances;

79:   mapping(address => mapping(address => uint256)) private allowances;
```

### <a name="N-55"></a>[N-55] Events that mark critical parameter changes should contain both the old and the new value

This should especially be done if the new value is not required to be different from the old value.

There are 4 instances:

- *DestinationBridge.sol* ( [#L239](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L239), [#L278](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L278) ):

```solidity
239:     emit ChainIdSupported(srcChain, srcContractAddress);

278:     emit ThresholdSet(srcChain, amounts, numOfApprovers);
```

- *SourceBridge.sol* ( [#L128](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L128) ):

```solidity
128:     emit DestinationChainContractAddressSet(destinationChain, contractAddress);
```

- *rUSDY.sol* ( [#L682](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L682) ):

```solidity
682:     emit TokensBurnt(_account, _amount);
```

### <a name="N-56"></a>[N-56] Emitting storage values instead of the memory one

Emitted values should not be read from storage again. Instead, the memory values should be used.

There are 4 instances:

- *RWADynamicOracle.sol* ( [#L164-L170](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L164-L170) ):

```solidity
/// @audit ranges
164:     emit RangeSet(
165:       ranges.length - 1,
166:       lastRange.end,
167:       endTimestamp,
168:       dailyInterestRate,
169:       prevClosePrice
170:     );
```

- *rUSDYFactory.sol* ( [#L101-L107](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L101-L107) ):

```solidity
/// @audit rUSDYProxy
/// @audit rUSDYProxyAdmin
/// @audit rUSDYImplementation
101:     emit rUSDYDeployed(
102:       address(rUSDYProxy),
103:       address(rUSDYProxyAdmin),
104:       address(rUSDYImplementation),
105:       "Ondo Rebasing U.S. Dollar Yield",
106:       "rUSDY"
107:     );
```

### <a name="N-57"></a>[N-57] Error messages should descriptive, rather that cryptic

There are 2 instances:

- *SourceBridge.sol* ( [#L168](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L168) ):

```solidity
168:       require(success, "Call Failed");
```

- *rUSDYFactory.sol* ( [#L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L134) ):

```solidity
134:       require(success, "Call Failed");
```

### <a name="N-58"></a>[N-58] Events are emitted without the sender information

When an action is triggered based on a user's action, not being able to filter based on who triggered the action makes event processing a lot more cumbersome. Including the `msg.sender` the events of these types of action will make events much more useful to end users, especially when `msg.sender` is not `tx.origin`.

<details>
<summary>There are 12 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L212](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L212), [#L222](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L222), [#L239](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L239), [#L278](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L278), [#L351](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L351) ):

```solidity
212:     emit ApproverAdded(approver);

222:     emit ApproverRemoved(approver);

239:     emit ChainIdSupported(srcChain, srcContractAddress);

278:     emit ThresholdSet(srcChain, amounts, numOfApprovers);

351:       emit BridgeCompleted(txn.sender, txn.amount);
```

- *SourceBridge.sol* ( [#L128](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L128) ):

```solidity
128:     emit DestinationChainContractAddressSet(destinationChain, contractAddress);
```

- *RWADynamicOracle.sol* ( [#L164-L170](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L164-L170), [#L229-L235](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L229-L235) ):

```solidity
164:     emit RangeSet(
165:       ranges.length - 1,
166:       lastRange.end,
167:       endTimestamp,
168:       dailyInterestRate,
169:       prevClosePrice
170:     );

229:     emit RangeOverriden(
230:       indexToModify,
231:       newStart,
232:       newEnd,
233:       newDailyIR,
234:       newPrevRangeClosePrice
235:     );
```

- *rUSDY.sol* ( [#L494](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L494), [#L594-L599](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L594-L599), [#L682](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L682) ):

```solidity
494:     emit Approval(_owner, _spender, _amount);

594:     emit SharesBurnt(
595:       _account,
596:       preRebaseTokenAmount,
597:       postRebaseTokenAmount,
598:       _sharesAmount
599:     );

682:     emit TokensBurnt(_account, _amount);
```

- *rUSDYFactory.sol* ( [#L101-L107](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L101-L107) ):

```solidity
101:     emit rUSDYDeployed(
102:       address(rUSDYProxy),
103:       address(rUSDYProxyAdmin),
104:       address(rUSDYImplementation),
105:       "Ondo Rebasing U.S. Dollar Yield",
106:       "rUSDY"
107:     );
```

</details>

### <a name="N-59"></a>[N-59] State variables should include comments

Consider adding some comments on critical state variables to explain what they are supposed to do: this will help for future code reviews.

There are 17 instances:

- *DestinationBridge.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L44), [#L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L45), [#L52](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L52), [#L53](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L53) ):

```solidity
44:   mapping(string => bytes32) public chainToApprovedSender;

45:   mapping(bytes32 => mapping(uint256 => bool)) public isSpentNonce;

52:   mapping(string => Threshold[]) public chainToThresholds;

53:   mapping(bytes32 => Transaction) public txnHashToTransaction;
```

- *RWADynamicOracle.sol* ( [#L23](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L23), [#L25](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L25), [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L27), [#L28](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L28) ):

```solidity
23:   uint256 public constant DAY = 1 days;

25:   Range[] public ranges;

27:   bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");

28:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
```

- *rUSDY.sol* ( [#L98](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L98), [#L99](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L99), [#L100](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L100), [#L101-L102](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L101-L102) ):

```solidity
98:   bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

99:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

100:   bytes32 public constant BURNER_ROLE = keccak256("BURN_ROLE");

101:   bytes32 public constant LIST_CONFIGURER_ROLE =
102:     keccak256("LIST_CONFIGURER_ROLE");
```

- *rUSDYFactory.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L44), [#L46](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L46), [#L47](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L47), [#L48](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L48), [#L49](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L49) ):

```solidity
44:   bytes32 public constant DEFAULT_ADMIN_ROLE = bytes32(0);

46:   address internal immutable guardian;

47:   rUSDY public rUSDYImplementation;

48:   ProxyAdmin public rUSDYProxyAdmin;

49:   TokenProxy public rUSDYProxy;
```

### <a name="N-60"></a>[N-60] Missing events in sensitive functions

Events should be emitted when sensitive changes are made to the contracts, but some functions lack them.

There is 1 instance:

- *rUSDY.sol* ( [#L662-L664](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L662-L664) ):

```solidity
662:   function setOracle(address _oracle) external onlyRole(USDY_MANAGER_ROLE) {
663:     oracle = IRWADynamicOracle(_oracle);
664:   }
```

### <a name="N-61"></a>[N-61] Modifier declarations should have NatSpec descriptions

There is 1 instance:

- *rUSDYFactory.sol* ( [#L154](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L154) ):

```solidity
154:   modifier onlyGuardian() {
```

### <a name="N-62"></a>[N-62] Empty bytes check is missing

Passing empty bytes to a function can cause unexpected behavior, such as certain operations failing, producing incorrect results, or wasting gas. It is recommended to check that all byte parameters are not empty.

There are 2 instances:

- *DestinationBridge.sol* ( [#L85-L89](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L85-L89) ):

```solidity
/// @audit payload
85:   function _execute(
86:     string calldata srcChain,
87:     string calldata srcAddr,
88:     bytes calldata payload
89:   ) internal override whenNotPaused {
```

- *SourceBridge.sol* ( [#L91-L95](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L91-L95) ):

```solidity
/// @audit payload
91:   function _payGasAndCallContract(
92:     string calldata destinationChain,
93:     string memory destContract,
94:     bytes memory payload
95:   ) private {
```

### <a name="N-63"></a>[N-63] Use the latest solidity version for deployment

Upgrading to a newer Solidity release can optimize gas usage, take advantage of new features and improve overall contract efficiency. Where possible, based on compatibility requirements, it is recommended to use newer/latest solidity version to take advantage of the latest optimizations and features.

There are 6 instances:

- *DestinationBridge.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *SourceBridge.sol* ( [#L1](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L1) ):

```solidity
1: pragma solidity 0.8.16;
```

- *IRWADynamicOracle.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *RWADynamicOracle.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *rUSDY.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *rUSDYFactory.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

### <a name="N-64"></a>[N-64] Avoid the use of sensitive terms

Use [alternative variants](https://www.zdnet.com/article/mysql-drops-master-slave-and-blacklist-whitelist-terminology/), e.g. allowlist/denylist instead of whitelist/blacklist.

There are 4 instances:

- *DestinationBridge.sol* ( [#L399](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L399) ):

```solidity
399:    * @notice event emitted when a new contract is whitelisted as an approved
```

- *RWADynamicOracle.sol* ( [#L342](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L342) ):

```solidity
342:   // Copied from https://github.com/makerdao/dss/blob/master/src/jug.sol
```

- *rUSDY.sol* ( [#L319](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L319), [#L344](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L344) ):

```solidity
319:    * https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol#L42

344:    * https://github.com/OpenZeppelin/openzeppelin-contracts/blob/master/contracts/token/ERC20/IERC20.sol#L42
```

### <a name="N-65"></a>[N-65] Consider adding a block/deny-list

Doing so will significantly increase centralization, but will help to prevent hackers from using stolen tokens

There are 5 instances:

- *DestinationBridge.sol* ( [#L27-L32](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L27-L32) ):

```solidity
27: contract DestinationBridge is
28:   AxelarExecutable,
29:   MintTimeBasedRateLimiter,
30:   Ownable,
31:   Pausable
32: {
```

- *SourceBridge.sol* ( [#L11](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L11) ):

```solidity
11: contract SourceBridge is Ownable, Pausable, IMulticall {
```

- *RWADynamicOracle.sol* ( [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L22) ):

```solidity
22: contract RWADynamicOracle is IRWAOracle, AccessControlEnumerable, Pausable {
```

- *rUSDY.sol* ( [#L57-L67](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L57-L67) ):

```solidity
57: contract rUSDY is
58:   Initializable,
59:   ContextUpgradeable,
60:   PausableUpgradeable,
61:   AccessControlEnumerableUpgradeable,
62:   BlocklistClientUpgradeable,
63:   AllowlistClientUpgradeable,
64:   SanctionsListClientUpgradeable,
65:   IERC20Upgradeable,
66:   IERC20MetadataUpgradeable
67: {
```

- *rUSDYFactory.sol* ( [#L43](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L43) ):

```solidity
43: contract rUSDYFactory is IMulticall {
```

### <a name="N-66"></a>[N-66] Enable IR-based code generation

The IR-based code generator was introduced with an aim to not only allow code generation to be more transparent and auditable but also to enable more powerful optimization passes that span across functions.
You can enable it on the command line using `--via-ir` or with the option `{"viaIR": true}`.
This will take longer to compile, but you can just simple test it before deploying and if you got a better benchmark then you can add --via-ir to your deploy command
More on: https://docs.soliditylang.org/en/v0.8.17/ir-breaking-changes.html

There is 1 instance:

- Global finding

### <a name="N-67"></a>[N-67] Contracts should have full test coverage

While 100% code coverage does not guarantee that there are no bugs, it often will catch easy-to-find bugs, and will ensure that there are fewer regressions when the code invariably has to be modified. Furthermore, in order to get full coverage, code authors will often have to re-organize their code so that it is more modular, so that each component can be tested separately, which reduces interdependencies between modules and layers, and makes for code that is easier to reason about and audit.

There is 1 instance:

- Global finding

### <a name="N-68"></a>[N-68] Large or complicated code bases should implement invariant tests

This includes: large code bases, or code with lots of inline-assembly, complicated math, or complicated interactions between multiple contracts.
Invariant fuzzers such as Echidna require the test writer to come up with invariants which should not be violated under any circumstances, and the fuzzer tests various inputs and function calls to ensure that the invariants always hold.
Even code with 100% code coverage can still have bugs due to the order of the operations a user performs, and invariant fuzzers may help significantly.

There is 1 instance:

- Global finding

### <a name="N-69"></a>[N-69] Top-level declarations should be separated by at least two lines

<details>
<summary>There are 16 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L16-L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L16-L18), [#L25-L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L25-L27) ):

```solidity
16: pragma solidity 0.8.16;
17: 
18: import "contracts/interfaces/IAxelarGateway.sol";

25: import "contracts/bridge/MintRateLimiter.sol";
26: 
27: contract DestinationBridge is
```

- *SourceBridge.sol* ( [#L1-L3](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L1-L3), [#L9-L11](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L9-L11) ):

```solidity
1: pragma solidity 0.8.16;
2: 
3: import "contracts/interfaces/IAxelarGateway.sol";

9: import "contracts/external/openzeppelin/contracts/security/Pausable.sol";
10: 
11: contract SourceBridge is Ownable, Pausable, IMulticall {
```

- *IRWADynamicOracle.sol* ( [#L16-L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L16-L18), [#L16-L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L16-L18) ):

```solidity
16: pragma solidity 0.8.16;
17: 
18: interface IRWADynamicOracle {

16: pragma solidity 0.8.16;
17: 
18: interface IRWADynamicOracle {
```

- *RWADynamicOracle.sol* ( [#L16-L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L16-L18), [#L20-L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L20-L22), [#L398-L400](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L398-L400), [#L402-L404](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L402-L404) ):

```solidity
16: pragma solidity 0.8.16;
17: 
18: import "contracts/rwaOracles/IRWAOracle.sol";

20: import "contracts/external/openzeppelin/contracts/security/Pausable.sol";
21: 
22: contract RWADynamicOracle is IRWAOracle, AccessControlEnumerable, Pausable {

398:   }
399: 
400:   function _rmul(uint256 x, uint256 y) internal pure returns (uint256 z) {

402:   }
403: 
404:   function _mul(uint256 x, uint256 y) internal pure returns (uint256 z) {
```

- *rUSDY.sol* ( [#L16-L18](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L16-L18), [#L107-L109](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L107-L109), [#L118-L120](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L118-L120), [#L132-L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L132-L134), [#L683-L685](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L683-L685), [#L687-L689](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L687-L689) ):

```solidity
16: pragma solidity 0.8.16;
17: 
18: import "contracts/external/openzeppelin/contracts-upgradeable/token/ERC20/IERC20Upgradeable.sol";

107:   }
108: 
109:   function initialize(

118:   }
119: 
120:   function __rUSDY_init(

132:   }
133: 
134:   function __rUSDY_init_unchained(

683:   }
684: 
685:   function pause() external onlyRole(PAUSER_ROLE) {

687:   }
688: 
689:   function unpause() external onlyRole(USDY_MANAGER_ROLE) {
```

</details>

### <a name="N-70"></a>[N-70] Consider adding formal verification proofs

Formal verification is the act of proving or disproving the correctness of intended algorithms underlying a system with respect to a certain formal specification/property/invariant, using formal methods of mathematics.

Some tools that are currently available to perform these tests on smart contracts are [SMTChecker](https://docs.soliditylang.org/en/latest/smtchecker.html) and [Certora Prover](https://www.certora.com/).

There are 6 instances:

- [*DestinationBridge.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol)

- [*SourceBridge.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol)

- [*IRWADynamicOracle.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol)

- [*RWADynamicOracle.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol)

- [*rUSDY.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol)

- [*rUSDYFactory.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol)

## Gas Optimizations

### <a name="G-1"></a>[G-1] Use `storage` instead of `memory` for structs/arrays

When fetching data from a storage location, assigning the data to a `memory` variable causes all fields of the struct/array to be read from storage, which incurs a Gcoldsload (**2100 gas**) for *each* field of the struct/array. If the fields are read from the new memory variable, they incur an additional `MLOAD` rather than a cheap stack read. Instead of declaring the variable with the `memory` keyword, declaring the variable with the `storage` keyword and caching any fields that need to be re-read in stack variables, will be much cheaper, only incurring the Gcoldsload for the fields actually read. The only time it makes sense to read the whole struct/array into a `memory` variable, is if the full struct/array is being returned by the function, is being passed to a function that requires `memory`, or if the array/struct is being read from another `memory` array/struct.

There are 6 instances:

- *DestinationBridge.sol* ( [#L133](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L133), [#L178](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L178), [#L339](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L339) ):

```solidity
133:     Threshold[] memory thresholds = chainToThresholds[srcChain];

178:     TxnThreshold memory t = txnToThresholdSet[txnHash];

339:     Transaction memory txn = txnHashToTransaction[txnHash];
```

- *SourceBridge.sol* ( [#L66](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L66) ):

```solidity
66:     string memory destContract = destChainToContractAddr[destinationChain];
```

- *RWADynamicOracle.sol* ( [#L120](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L120), [#L155](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L155) ):

```solidity
120:       Range memory lastRange = ranges[ranges.length - 1];

155:     Range memory lastRange = ranges[ranges.length - 1];
```

### <a name="G-2"></a>[G-2] The `<array>.length` should be cached outside of the `for`-loop

The overheads outlined below are PER LOOP, excluding the first loop:
- storage arrays incur a Gwarmaccess (**100 gas**)
- memory arrays use `MLOAD` (**3 gas**)
- calldata arrays use `CALLDATALOAD` (**3 gas**)
Caching the length changes each of these to a `DUP<N>` (**3 gas**), and gets rid of the extra `DUP<N>` needed to store the stack offset.

There are 5 instances:

- *DestinationBridge.sol* ( [#L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L134), [#L160](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L160), [#L264](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L264) ):

```solidity
134:     for (uint256 i = 0; i < thresholds.length; ++i) {

160:       for (uint256 i = 0; i < t.approvers.length; ++i) {

264:     for (uint256 i = 0; i < amounts.length; ++i) {
```

- *SourceBridge.sol* ( [#L164](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L164) ):

```solidity
164:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

- *rUSDYFactory.sol* ( [#L130](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L130) ):

```solidity
130:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

### <a name="G-3"></a>[G-3] Using `private` for constants saves gas

If needed, the values can be read from the verified contract source code, or if there are multiple values there can be a single getter function that [returns a tuple](https://github.com/code-423n4/2022-08-frax/blob/90f55a9ce4e25bceed3a74290b854341d8de6afa/src/contracts/FraxlendPair.sol#L156-L178) of the values of all currently-public constants. Saves **3406-3606 gas** in deployment gas due to the compiler not having to create non-payable getter functions for deployment calldata, not having to store the bytes of the value outside of where it's used, and not adding another entry to the method ID table

There are 12 instances:

- *DestinationBridge.sol* ( [#L48](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L48) ):

```solidity
48:   bytes32 public constant VERSION = "1.0";
```

- *SourceBridge.sol* ( [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L27) ):

```solidity
27:   bytes32 public constant VERSION = "1.0";
```

- *RWADynamicOracle.sol* ( [#L23](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L23), [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L27), [#L28](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L28) ):

```solidity
23:   uint256 public constant DAY = 1 days;

27:   bytes32 public constant SETTER_ROLE = keccak256("SETTER_ROLE");

28:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");
```

- *rUSDY.sol* ( [#L91](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L91), [#L97](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L97), [#L98](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L98), [#L99](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L99), [#L100](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L100), [#L101-L102](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L101-L102) ):

```solidity
91:   uint256 public constant BPS_DENOMINATOR = 10_000;

97:   bytes32 public constant USDY_MANAGER_ROLE = keccak256("ADMIN_ROLE");

98:   bytes32 public constant MINTER_ROLE = keccak256("MINTER_ROLE");

99:   bytes32 public constant PAUSER_ROLE = keccak256("PAUSER_ROLE");

100:   bytes32 public constant BURNER_ROLE = keccak256("BURN_ROLE");

101:   bytes32 public constant LIST_CONFIGURER_ROLE =
102:     keccak256("LIST_CONFIGURER_ROLE");
```

- *rUSDYFactory.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L44) ):

```solidity
44:   bytes32 public constant DEFAULT_ADMIN_ROLE = bytes32(0);
```

### <a name="G-4"></a>[G-4] Constructors can be marked as payable to save deployment gas

Payable functions cost less gas to execute, because the compiler does not have to add extra checks to ensure that no payment is provided. A constructor can be safely marked as payable, because only the deployer would be able to pass funds, and the project itself would not pass any funds.

There are 5 instances:

- *DestinationBridge.sol* ( [#L55-L66](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L55-L66) ):

```solidity
55:   constructor(
56:     address _token,
57:     address _axelarGateway,
58:     address _allowlist,
59:     address _ondoApprover,
60:     address _owner,
61:     uint256 _mintLimit,
62:     uint256 _mintDuration
63:   )
64:     AxelarExecutable(_axelarGateway)
65:     MintTimeBasedRateLimiter(_mintDuration, _mintLimit)
66:   {
```

- *SourceBridge.sol* ( [#L40-L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L40-L45) ):

```solidity
40:   constructor(
41:     address _token,
42:     address _axelarGateway,
43:     address _gasService,
44:     address owner
45:   ) {
```

- *RWADynamicOracle.sol* ( [#L30-L38](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L30-L38) ):

```solidity
30:   constructor(
31:     address admin,
32:     address setter,
33:     address pauser,
34:     uint256 firstRangeStart,
35:     uint256 firstRangeEnd,
36:     uint256 dailyIR,
37:     uint256 startPrice
38:   ) {
```

- *rUSDY.sol* ( [#L105](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L105) ):

```solidity
105:   constructor() {
```

- *rUSDYFactory.sol* ( [#L51](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L51) ):

```solidity
51:   constructor(address _guardian) {
```

### <a name="G-5"></a>[G-5] Unused named return variables without optimizer waste gas

Consider changing the variable to be an unnamed one, since the variable is never assigned, nor is it returned by name. If the optimizer is not turned on, leaving the code as it is will also waste gas for the stack variable.

There are 3 instances:

- *RWADynamicOracle.sol* ( [#L75](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L75), [#L104-L110](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L104-L110), [#L262-L265](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L262-L265) ):

```solidity
/// @audit price
75:   function getPrice() public view whenNotPaused returns (uint256 price) {

/// @audit price
104:   function simulateRange(
105:     uint256 blockTimeStamp,
106:     uint256 dailyIR,
107:     uint256 endTime,
108:     uint256 startTime,
109:     uint256 rangeStartPrice
110:   ) external view returns (uint256 price) {

/// @audit price
262:   function derivePrice(
263:     Range memory currentRange,
264:     uint256 currentTime
265:   ) internal pure returns (uint256 price) {
```

### <a name="G-6"></a>[G-6] Use custom errors rather than `revert()`/`require()` strings to save gas

Custom errors are available from solidity version 0.8.4. Custom errors save [**~50 gas**](https://gist.github.com/IllIllI000/ad1bd0d29a0101b25e57c293b4b0c746) each time they're hit by [avoiding having to allocate and store the revert string](https://blog.soliditylang.org/2021/04/21/custom-errors/#errors-in-depth). Not defining the strings also save deployment gas.

<details>
<summary>There are 24 instances (click to show):</summary>

- *SourceBridge.sol* ( [#L168](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L168) ):

```solidity
168:       require(success, "Call Failed");
```

- *rUSDY.sol* ( [#L307](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L307), [#L358-L361](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L358-L361), [#L435](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L435), [#L450](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L450), [#L490](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L490), [#L491](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L491), [#L519](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L519), [#L520](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L520), [#L525-L528](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L525-L528), [#L547](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L547), [#L579](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L579), [#L584](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L584), [#L634](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L634), [#L635](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L635), [#L636-L639](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L636-L639), [#L644](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L644), [#L645](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L645), [#L646](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L646), [#L651](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L651), [#L652](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L652), [#L653](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L653) ):

```solidity
307:     require(currentAllowance >= _amount, "TRANSFER_AMOUNT_EXCEEDS_ALLOWANCE");

358:     require(
359:       currentAllowance >= _subtractedValue,
360:       "DECREASED_ALLOWANCE_BELOW_ZERO"
361:     );

435:     require(_USDYAmount > 0, "rUSDY: can't wrap zero USDY tokens");

450:     require(_rUSDYAmount > 0, "rUSDY: can't unwrap zero rUSDY tokens");

490:     require(_owner != address(0), "APPROVE_FROM_ZERO_ADDRESS");

491:     require(_spender != address(0), "APPROVE_TO_ZERO_ADDRESS");

519:     require(_sender != address(0), "TRANSFER_FROM_THE_ZERO_ADDRESS");

520:     require(_recipient != address(0), "TRANSFER_TO_THE_ZERO_ADDRESS");

525:     require(
526:       _sharesAmount <= currentSenderShares,
527:       "TRANSFER_AMOUNT_EXCEEDS_BALANCE"
528:     );

547:     require(_recipient != address(0), "MINT_TO_THE_ZERO_ADDRESS");

579:     require(_account != address(0), "BURN_FROM_THE_ZERO_ADDRESS");

584:     require(_sharesAmount <= accountShares, "BURN_AMOUNT_EXCEEDS_BALANCE");

634:       require(!_isBlocked(msg.sender), "rUSDY: 'sender' address blocked");

635:       require(!_isSanctioned(msg.sender), "rUSDY: 'sender' address sanctioned");

636:       require(
637:         _isAllowed(msg.sender),
638:         "rUSDY: 'sender' address not on allowlist"
639:       );

644:       require(!_isBlocked(from), "rUSDY: 'from' address blocked");

645:       require(!_isSanctioned(from), "rUSDY: 'from' address sanctioned");

646:       require(_isAllowed(from), "rUSDY: 'from' address not on allowlist");

651:       require(!_isBlocked(to), "rUSDY: 'to' address blocked");

652:       require(!_isSanctioned(to), "rUSDY: 'to' address sanctioned");

653:       require(_isAllowed(to), "rUSDY: 'to' address not on allowlist");
```

- *rUSDYFactory.sol* ( [#L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L134), [#L155](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L155) ):

```solidity
134:       require(success, "Call Failed");

155:     require(msg.sender == guardian, "rUSDYFactory: You are not the Guardian");
```

</details>

### <a name="G-7"></a>[G-7] Use `unchecked` block for safe subtractions

If it can be confirmed that the subtraction operation will not overflow, using an unchecked block can save gas.
For example, `require(x <= y); z = y - x;` can be optimized to `require(x <= y); unchecked { z = y - x; }`.

There are 5 instances:

- *RWADynamicOracle.sol* ( [#L205](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L205) ):

```solidity
/// @audit checked on line 201
205:     else if (indexToModify == rangeLength - 1) {
```

- *rUSDY.sol* ( [#L310](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L310), [#L362](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L362), [#L530](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L530), [#L590](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L590) ):

```solidity
/// @audit checked on line 307
310:     _approve(_sender, msg.sender, currentAllowance - _amount);

/// @audit checked on line 359
362:     _approve(msg.sender, _spender, currentAllowance - _subtractedValue);

/// @audit checked on line 526
530:     shares[_sender] = currentSenderShares - _sharesAmount;

/// @audit checked on line 584
590:     shares[_account] = accountShares - _sharesAmount;
```

### <a name="G-8"></a>[G-8] Operator `+=` costs more gas than `<x> = <x> + <y>` for state variables

Using the `+=` like operator instead of plus-equals saves **[113 gas](https://gist.github.com/IllIllI000/cbbfb267425b898e5be734d4008d4fe8)**.

There are 2 instances:

- *rUSDY.sol* ( [#L551](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L551), [#L588](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L588) ):

```solidity
551:     totalShares += _sharesAmount;

588:     totalShares -= _sharesAmount;
```

### <a name="G-9"></a>[G-9] Avoid updating storage when the value hasn't changed

Manipulating storage in solidity is gas-intensive. It can be optimized by avoiding unnecessary storage updates when the new value equals the existing value.
If the old value is equal to the new value, not re-storing the value will avoid a Gsreset (**2900 gas**), potentially at the expense of a Gcoldsload (**2100 gas**) or a Gwarmaccess (**100 gas**).

There are 6 instances:

- *DestinationBridge.sol* ( [#L238](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L238) ):

```solidity
238:     chainToApprovedSender[srcChain] = keccak256(abi.encode(srcContractAddress));
```

- *SourceBridge.sol* ( [#L125-L127](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L125-L127) ):

```solidity
125:     destChainToContractAddr[destinationChain] = AddressToString.toString(
126:       contractAddress
127:     );
```

- *rUSDY.sol* ( [#L139](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L139), [#L140](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L140), [#L493](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L493), [#L663](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L663) ):

```solidity
139:     usdy = IUSDY(_usdy);

140:     oracle = IRWADynamicOracle(_oracle);

493:     allowances[_owner][_spender] = _amount;

663:     oracle = IRWADynamicOracle(_oracle);
```

### <a name="G-10"></a>[G-10] Using `bool`s for storage incurs overhead

Use uint256(1) and uint256(2) for true/false to avoid a Gwarmaccess (100 gas), and to avoid Gsset (20000 gas) when changing from ‘false’ to ‘true’, after having been ‘true’ in the past. Refer to the [source](https://github.com/OpenZeppelin/openzeppelin-contracts/blob/5ae630684a0f57de400ef69499addab4c32ac8fb/contracts/security/ReentrancyGuard.sol#L23-L27).

There are 2 instances:

- *DestinationBridge.sol* ( [#L43](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L43), [#L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L45) ):

```solidity
43:   mapping(address => bool) public approvers;

45:   mapping(bytes32 => mapping(uint256 => bool)) public isSpentNonce;
```

### <a name="G-11"></a>[G-11] Multiple accesses of the same mapping/array key/index should be cached

The instances below point to the second+ access of a value inside a mapping/array, within a function. Caching a mapping's value in a local `storage` or `calldata` variable when the value is accessed [multiple times](https://gist.github.com/IllIllI000/ec23a57daa30a8f8ca8b9681c8ccefb0), saves **~42 gas per access** due to not having to recalculate the key's keccak256 hash (Gkeccak256 - **30 gas**) and that calculation's associated stack operations. Caching an array's struct avoids recalculating the array offsets into memory/calldata

There are 17 instances:

- *DestinationBridge.sol* ( [#L96](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L96), [#L102](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L102), [#L102](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L102), [#L137](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L137), [#L263](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L263), [#L339](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L339) ):

```solidity
/// @audit `chainToApprovedSender[srcChain]` is also accessed on line 99, 102, 106
96:     if (chainToApprovedSender[srcChain] == bytes32(0)) {

/// @audit `isSpentNonce[chainToApprovedSender[srcChain]][nonce]` is also accessed on line 106
102:     if (isSpentNonce[chainToApprovedSender[srcChain]][nonce]) {

/// @audit `isSpentNonce[chainToApprovedSender[srcChain]]` is also accessed on line 106
102:     if (isSpentNonce[chainToApprovedSender[srcChain]][nonce]) {

/// @audit `txnToThresholdSet[txnHash]` is also accessed on line 144
137:         txnToThresholdSet[txnHash] = TxnThreshold(

/// @audit `chainToThresholds[srcChain]` is also accessed on line 270, 273, 266
263:     delete chainToThresholds[srcChain];

/// @audit `txnHashToTransaction[txnHash]` is also accessed on line 350
339:     Transaction memory txn = txnHashToTransaction[txnHash];
```

- *RWADynamicOracle.sol* ( [#L212](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L212), [#L214](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L214), [#L222](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L222) ):

```solidity
/// @audit `ranges[indexToModify - 1]` is also accessed on line 207
212:       if (newStart < ranges[indexToModify - 1].end) revert InvalidRange();

/// @audit `ranges[indexToModify + 1]` is also accessed on line 201
214:       if (newEnd > ranges[indexToModify + 1].start) revert InvalidRange();

/// @audit `ranges[indexToModify]` is also accessed on line 220
222:       ranges[indexToModify] = Range(
```

- *rUSDY.sol* ( [#L524](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L524), [#L531](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L531), [#L553](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L553), [#L583](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L583) ):

```solidity
/// @audit `shares[_sender]` is also accessed on line 530
524:     uint256 currentSenderShares = shares[_sender];

/// @audit `shares[_recipient]` is also accessed on line 531
531:     shares[_recipient] = shares[_recipient] + _sharesAmount;

/// @audit `shares[_recipient]` is also accessed on line 553
553:     shares[_recipient] = shares[_recipient] + _sharesAmount;

/// @audit `shares[_account]` is also accessed on line 590
583:     uint256 accountShares = shares[_account];
```

### <a name="G-12"></a>[G-12] State variables that are used multiple times in a function should be cached in stack variables

When performing multiple operations on a state variable in a function, it is recommended to cache it first. Either multiple reads or multiple writes to a state variable can save gas by caching it on the stack.
Caching of a state variable replaces each Gwarmaccess (100 gas) with a much cheaper stack read. Other less obvious fixes/optimizations include having local memory caches of state variable structs, or having local caches of state variable contracts/addresses.
*Saves 100 gas per instance*.

There are 28 instances:

- *RWADynamicOracle.sol* ( [#L104](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L104), [#L151](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L151), [#L186](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L186) ):

```solidity
/// @audit ranges.length: 2 reads
104:   function simulateRange(

/// @audit ranges.length: 2 reads
151:   function setRange(

/// @audit ranges[indexToModify - 1].end: 2 reads
/// @audit ranges[indexToModify + 1].start: 2 reads
186:   function overrideRange(
```

- *rUSDY.sol* ( [#L543](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L543), [#L575](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L575) ):

```solidity
/// @audit totalShares: 2 reads 1 writes
543:   function _mintShares(

/// @audit totalShares: 2 reads 1 writes
575:   function _burnShares(
```

- *rUSDYFactory.sol* ( [#L75](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L75) ):

```solidity
/// @audit rUSDYImplementation: 3 reads 1 writes
/// @audit rUSDYProxyAdmin: 5 reads 1 writes
/// @audit rUSDYProxy: 3 reads 1 writes
75:   function deployrUSDY(
```

### <a name="G-13"></a>[G-13] `internal` functions only called once can be inlined to save gas

If an `internal` function is only used once, there is no need to modularize it, unless the function calling it would otherwise be too long and complex. Not inlining costs 20 to 40 gas because of two extra JUMP instructions and additional stack operations needed for function calls.

There are 9 instances:

- *DestinationBridge.sol* ( [#L128-L132](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L128-L132), [#L177](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L177) ):

```solidity
128:   function _attachThreshold(
129:     uint256 amount,
130:     bytes32 txnHash,
131:     string memory srcChain
132:   ) internal {

177:   function _checkThresholdMet(bytes32 txnHash) internal view returns (bool) {
```

- *RWADynamicOracle.sol* ( [#L282](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L282), [#L345-L349](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L345-L349), [#L400](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L400), [#L404](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L404) ):

```solidity
282:   function roundUpTo8(uint256 value) internal pure returns (uint256) {

345:   function _rpow(
346:     uint256 x,
347:     uint256 n,
348:     uint256 base
349:   ) internal pure returns (uint256 z) {

400:   function _rmul(uint256 x, uint256 y) internal pure returns (uint256 z) {

404:   function _mul(uint256 x, uint256 y) internal pure returns (uint256 z) {
```

- *rUSDY.sol* ( [#L120-L127](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L120-L127), [#L134-L138](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L134-L138), [#L543-L546](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L543-L546) ):

```solidity
120:   function __rUSDY_init(
121:     address blocklist,
122:     address allowlist,
123:     address sanctionsList,
124:     address _usdy,
125:     address guardian,
126:     address _oracle
127:   ) internal onlyInitializing {

134:   function __rUSDY_init_unchained(
135:     address _usdy,
136:     address guardian,
137:     address _oracle
138:   ) internal onlyInitializing {

543:   function _mintShares(
544:     address _recipient,
545:     uint256 _sharesAmount
546:   ) internal whenNotPaused returns (uint256) {
```

### <a name="G-14"></a>[G-14] Private functions only used once can be inlined to save gas

If a `private` function is only used once, there is no need to modularize it, unless the function calling it would otherwise be too long and complex.

There is 1 instance:

- *SourceBridge.sol* ( [#L91-L95](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L91-L95) ):

```solidity
91:   function _payGasAndCallContract(
92:     string calldata destinationChain,
93:     string memory destContract,
94:     bytes memory payload
95:   ) private {
```

### <a name="G-15"></a>[G-15] Unlimited gas consumption risk due to external call recipients

When calling an external function without specifying a gas limit , the called contract may consume all the remaining gas, causing the tx to be reverted. To mitigate this, it is recommended to explicitly set a gas limit when making low level external calls.

There are 2 instances:

- *SourceBridge.sol* ( [#L165](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L165) ):

```solidity
165:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
```

- *rUSDYFactory.sol* ( [#L131](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L131) ):

```solidity
131:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
```

### <a name="G-16"></a>[G-16] Initializers can be marked as payable to save deployment gas

Payable functions cost less gas to execute, because the compiler does not have to add extra checks to ensure that no payment is provided. Initializers can be safely marked as payable, because only the deployer or the factory contract would call the function without carrying any funds.

There is 1 instance:

- *rUSDY.sol* ( [#L109-L116](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L109-L116) ):

```solidity
109:   function initialize(
110:     address blocklist,
111:     address allowlist,
112:     address sanctionsList,
113:     address _usdy,
114:     address guardian,
115:     address _oracle
116:   ) public virtual initializer {
```

### <a name="G-17"></a>[G-17] Functions that revert when called by normal users can be marked `payable`

If a function modifier such as `onlyOwner` is used, the function will revert if a normal user tries to pay the function. Marking the function as `payable` will lower the gas cost for legitimate callers because the compiler will not include checks for whether a payment was provided.
The extra opcodes avoided are: 
`CALLVALUE(2), DUP1(3), ISZERO(3), PUSH2(3), JUMPI(10), PUSH1(3), DUP1(3), REVERT(0), JUMPDEST(1), POP(2)` 
which cost an average of about 21 gas per call to the function, in addition to the extra deployment cost.

<details>
<summary>There are 24 instances (click to show):</summary>

- *DestinationBridge.sol* ( [#L210](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L210), [#L220](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L220), [#L234-L237](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L234-L237), [#L255-L259](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L255-L259), [#L286](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L286), [#L295](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L295), [#L304](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L304), [#L313](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L313), [#L322](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L322) ):

```solidity
210:   function addApprover(address approver) external onlyOwner {

220:   function removeApprover(address approver) external onlyOwner {

234:   function addChainSupport(
235:     string calldata srcChain,
236:     string calldata srcContractAddress
237:   ) external onlyOwner {

255:   function setThresholds(
256:     string calldata srcChain,
257:     uint256[] calldata amounts,
258:     uint256[] calldata numOfApprovers
259:   ) external onlyOwner {

286:   function setMintLimit(uint256 mintLimit) external onlyOwner {

295:   function setMintLimitDuration(uint256 mintDuration) external onlyOwner {

304:   function pause() external onlyOwner {

313:   function unpause() external onlyOwner {

322:   function rescueTokens(address _token) external onlyOwner {
```

- *SourceBridge.sol* ( [#L121-L124](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L121-L124), [#L136](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L136), [#L145](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L145) ):

```solidity
121:   function setDestinationChainContractAddress(
122:     string memory destinationChain,
123:     address contractAddress
124:   ) external onlyOwner {

136:   function pause() external onlyOwner {

145:   function unpause() external onlyOwner {
```

- *RWADynamicOracle.sol* ( [#L151-L154](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L151-L154), [#L186-L192](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L186-L192), [#L241](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L241), [#L248](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L248) ):

```solidity
151:   function setRange(
152:     uint256 endTimestamp,
153:     uint256 dailyInterestRate
154:   ) external onlyRole(SETTER_ROLE) {

186:   function overrideRange(
187:     uint256 indexToModify,
188:     uint256 newStart,
189:     uint256 newEnd,
190:     uint256 newDailyIR,
191:     uint256 newPrevRangeClosePrice
192:   ) external onlyRole(DEFAULT_ADMIN_ROLE) {

241:   function pauseOracle() external onlyRole(PAUSER_ROLE) {

248:   function unpauseOracle() external onlyRole(DEFAULT_ADMIN_ROLE) {
```

- *rUSDY.sol* ( [#L662](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L662), [#L672-L675](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L672-L675), [#L685](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L685), [#L689](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L689), [#L698-L700](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L698-L700), [#L709-L711](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L709-L711), [#L720-L722](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L720-L722) ):

```solidity
662:   function setOracle(address _oracle) external onlyRole(USDY_MANAGER_ROLE) {

672:   function burn(
673:     address _account,
674:     uint256 _amount
675:   ) external onlyRole(BURNER_ROLE) {

685:   function pause() external onlyRole(PAUSER_ROLE) {

689:   function unpause() external onlyRole(USDY_MANAGER_ROLE) {

698:   function setBlocklist(
699:     address blocklist
700:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

709:   function setAllowlist(
710:     address allowlist
711:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {

720:   function setSanctionsList(
721:     address sanctionsList
722:   ) external override onlyRole(LIST_CONFIGURER_ROLE) {
```

- *rUSDYFactory.sol* ( [#L75-L81](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L75-L81) ):

```solidity
75:   function deployrUSDY(
76:     address blocklist,
77:     address allowlist,
78:     address sanctionsList,
79:     address usdy,
80:     address oracle
81:   ) external onlyGuardian returns (address, address, address) {
```

</details>

### <a name="G-18"></a>[G-18] `array[index] += amount` is cheaper than `array[index] = array[index] + amount` (or related variants)

When updating a value in an array with arithmetic, using `array[index] += amount` is cheaper than `array[index] = array[index] + amount`.
This is because you avoid an additional `mload` when the array is stored in memory, and an `sload` when the array is stored in storage.
This can be applied for any arithmetic operation including `+=`, `-=`,`/=`,`*=`,`^=`,`&=`, `%=`, `<<=`,`>>=`, and `>>>=`.
This optimization can be particularly significant if the pattern occurs during a loop.

*Saves 28 gas for a storage array, 38 for a memory array*

There are 2 instances:

- *rUSDY.sol* ( [#L531](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L531), [#L553](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L553) ):

```solidity
531:     shares[_recipient] = shares[_recipient] + _sharesAmount;

553:     shares[_recipient] = shares[_recipient] + _sharesAmount;
```

### <a name="G-19"></a>[G-19] Operator `>=`/`<=` costs less gas than operator `>`/`<`

The compiler uses opcodes `GT` and `ISZERO` for code that uses `>`, but only requires `LT` for `>=`. A similar behavior applies for `>`, which uses opcodes `LT` and `ISZERO`, but only requires `GT` for `<=`. It can [save **3 gas**](https://gist.github.com/IllIllI000/3dc79d25acccfa16dee4e83ffdc6ffde) for each.
It should be converted to the `<=`/`>=` equivalent when comparing against integer literals.

There are 5 instances:

- *DestinationBridge.sol* ( [#L159](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L159) ):

```solidity
159:     if (t.approvers.length > 0) {
```

- *RWADynamicOracle.sol* ( [#L201](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L201) ):

```solidity
201:       if (rangeLength > 1 && newEnd > ranges[indexToModify + 1].start)
```

- *rUSDY.sol* ( [#L435](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L435), [#L450](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L450), [#L452](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L452) ):

```solidity
435:     require(_USDYAmount > 0, "rUSDY: can't wrap zero USDY tokens");

450:     require(_rUSDYAmount > 0, "rUSDY: can't unwrap zero rUSDY tokens");

452:     if (usdyAmount < BPS_DENOMINATOR) revert UnwrapTooSmall();
```

### <a name="G-20"></a>[G-20] Reduce gas usage by moving to Solidity 0.8.19 or later

Solidity version 0.8.19 introduced a number of gas optimizations, refer to the [Solidity 0.8.19 Release Announcement](https://soliditylang.org/blog/2023/02/22/solidity-0.8.19-release-announcement) for details.

There are 6 instances:

- *DestinationBridge.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *SourceBridge.sol* ( [#L1](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L1) ):

```solidity
1: pragma solidity 0.8.16;
```

- *IRWADynamicOracle.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *RWADynamicOracle.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *rUSDY.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *rUSDYFactory.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

### <a name="G-21"></a>[G-21] Using a double `if` statement instead of a logical AND(`&&`)

Using a double `if` statement instead of a logical AND (`&&`) can provide similar short-circuiting behavior whereas double if is slightly [more gas efficient](https://gist.github.com/DadeKuma/931ce6794a050201ec6544dbcc31316c).

There are 2 instances:

- *RWADynamicOracle.sol* ( [#L201](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L201) ):

```solidity
201:       if (rangeLength > 1 && newEnd > ranges[indexToModify + 1].start)
```

- *rUSDY.sol* ( [#L633](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L633) ):

```solidity
633:     if (from != msg.sender && to != msg.sender) {
```

### <a name="G-22"></a>[G-22] `require()`/`revert()` strings longer than 32 bytes cost extra gas

Each extra memory word of bytes past the original 32 [incurs an MSTORE](https://gist.github.com/hrkrshnn/ee8fabd532058307229d65dcd5836ddc#consider-having-short-revert-strings) which costs **3 gas**

There are 8 instances:

- *rUSDY.sol* ( [#L307](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L307), [#L435](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L435), [#L450](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L450), [#L635](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L635), [#L636-L639](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L636-L639), [#L646](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L646), [#L653](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L653) ):

```solidity
307:     require(currentAllowance >= _amount, "TRANSFER_AMOUNT_EXCEEDS_ALLOWANCE");

435:     require(_USDYAmount > 0, "rUSDY: can't wrap zero USDY tokens");

450:     require(_rUSDYAmount > 0, "rUSDY: can't unwrap zero rUSDY tokens");

635:       require(!_isSanctioned(msg.sender), "rUSDY: 'sender' address sanctioned");

636:       require(
637:         _isAllowed(msg.sender),
638:         "rUSDY: 'sender' address not on allowlist"
639:       );

646:       require(_isAllowed(from), "rUSDY: 'from' address not on allowlist");

653:       require(_isAllowed(to), "rUSDY: 'to' address not on allowlist");
```

- *rUSDYFactory.sol* ( [#L155](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L155) ):

```solidity
155:     require(msg.sender == guardian, "rUSDYFactory: You are not the Guardian");
```

### <a name="G-23"></a>[G-23] Divisions can be unchecked to save gas

The expression `type(int).min/(-1)` is the only case where division causes an overflow. Therefore, uncheck can be used to [save gas](https://gist.github.com/DadeKuma/3bc597338ae774b8b3bd43280d55271f) in scenarios where it is certain that such an overflow will not occur.

There are 12 instances:

- *RWADynamicOracle.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L44), [#L117](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L117), [#L219](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L219), [#L266](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L266), [#L401](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L401), [#L405](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L405) ):

```solidity
44:     uint256 trueStart = (startPrice * ONE) / dailyIR;

117:       uint256 trueStart = (rangeStartPrice * ONE) / dailyIR;

219:       uint256 trueStart = (newPrevRangeClosePrice * ONE) / newDailyIR;

266:     uint256 elapsedDays = (currentTime - currentRange.start) / DAY;

401:     z = _mul(x, y) / ONE;

405:     require(y == 0 || (z = x * y) / y == x);
```

- *rUSDY.sol* ( [#L217](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L217), [#L227](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L227), [#L391](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L391), [#L398](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L398), [#L454](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L454), [#L680](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L680) ):

```solidity
217:     return (totalShares * oracle.getPrice()) / (1e18 * BPS_DENOMINATOR);

227:     return (_sharesOf(_account) * oracle.getPrice()) / (1e18 * BPS_DENOMINATOR);

391:     return (_rUSDYAmount * 1e18 * BPS_DENOMINATOR) / oracle.getPrice();

398:     return (_shares * oracle.getPrice()) / (1e18 * BPS_DENOMINATOR);

454:     usdy.transfer(msg.sender, usdyAmount / BPS_DENOMINATOR);

680:     usdy.transfer(msg.sender, sharesAmount / BPS_DENOMINATOR);
```

### <a name="G-24"></a>[G-24] Increments can be `unchecked` to save gas

Using `unchecked` increments can save gas by bypassing the built-in overflow checks. This can save [30-40 gas](https://gist.github.com/hrkrshnn/ee8fabd532058307229d65dcd5836ddc#the-increment-in-for-loop-post-condition-can-be-made-unchecked) **per iteration**. So it is recommended to use `unchecked` increments when overflow is not possible.

There are 8 instances:

- *DestinationBridge.sol* ( [#L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L134), [#L160](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L160), [#L264](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L264) ):

```solidity
134:     for (uint256 i = 0; i < thresholds.length; ++i) {

160:       for (uint256 i = 0; i < t.approvers.length; ++i) {

264:     for (uint256 i = 0; i < amounts.length; ++i) {
```

- *SourceBridge.sol* ( [#L164](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L164) ):

```solidity
164:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

- *RWADynamicOracle.sol* ( [#L77](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L77), [#L113](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L113), [#L129](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L129) ):

```solidity
77:     for (uint256 i = 0; i < length; ++i) {

113:     for (uint256 i = 0; i < length; ++i) {

129:     for (uint256 i = 0; i < length + 1; ++i) {
```

- *rUSDYFactory.sol* ( [#L130](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L130) ):

```solidity
130:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

### <a name="G-25"></a>[G-25] Using assembly to check for zero can save gas

Using assembly to check for zero can save gas by allowing more direct access to the evm and reducing some of the overhead associated with high-level operations in solidity.

There are 15 instances:

- *DestinationBridge.sol* ( [#L96](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L96), [#L144](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L144), [#L265](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L265) ):

```solidity
96:     if (chainToApprovedSender[srcChain] == bytes32(0)) {

144:     if (txnToThresholdSet[txnHash].numberOfApprovalsNeeded == 0) {

265:       if (i == 0) {
```

- *SourceBridge.sol* ( [#L68](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L68), [#L72](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L72) ):

```solidity
68:     if (bytes(destContract).length == 0) {

72:     if (msg.value == 0) {
```

- *RWADynamicOracle.sol* ( [#L198](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L198), [#L218](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L218) ):

```solidity
198:     if (indexToModify == 0) {

218:     if (indexToModify == 0) {
```

- *rUSDY.sol* ( [#L490](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L490), [#L491](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L491), [#L519](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L519), [#L520](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L520), [#L547](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L547), [#L579](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L579), [#L642](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L642), [#L649](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L649) ):

```solidity
490:     require(_owner != address(0), "APPROVE_FROM_ZERO_ADDRESS");

491:     require(_spender != address(0), "APPROVE_TO_ZERO_ADDRESS");

519:     require(_sender != address(0), "TRANSFER_FROM_THE_ZERO_ADDRESS");

520:     require(_recipient != address(0), "TRANSFER_TO_THE_ZERO_ADDRESS");

547:     require(_recipient != address(0), "MINT_TO_THE_ZERO_ADDRESS");

579:     require(_account != address(0), "BURN_FROM_THE_ZERO_ADDRESS");

642:     if (from != address(0)) {

649:     if (to != address(0)) {
```

### <a name="G-26"></a>[G-26] Use assembly to emit events

To efficiently emit events, it's possible to utilize assembly by making use of scratch space and the free memory pointer. This approach has the advantage of potentially avoiding the costs associated with memory expansion.

However, it's important to note that in order to safely optimize this process, it is preferable to cache and restore the free memory pointer.

A good example of such practice can be seen in [Solady's](https://github.com/Vectorized/solady/blob/main/src/tokens/ERC1155.sol#L167) codebase.

There are 14 instances:

- *DestinationBridge.sol* ( [#L212](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L212), [#L222](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L222), [#L239](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L239), [#L351](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L351) ):

```solidity
212:     emit ApproverAdded(approver);

222:     emit ApproverRemoved(approver);

239:     emit ChainIdSupported(srcChain, srcContractAddress);

351:       emit BridgeCompleted(txn.sender, txn.amount);
```

- *SourceBridge.sol* ( [#L128](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L128) ):

```solidity
128:     emit DestinationChainContractAddressSet(destinationChain, contractAddress);
```

- *rUSDY.sol* ( [#L421](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L421), [#L423](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L423), [#L438](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L438), [#L439](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L439), [#L455](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L455), [#L470](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L470), [#L471](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L471), [#L494](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L494), [#L682](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L682) ):

```solidity
421:     emit TransferShares(msg.sender, _recipient, _sharesAmount);

423:     emit Transfer(msg.sender, _recipient, tokensAmount);

438:     emit Transfer(address(0), msg.sender, getRUSDYByShares(_USDYAmount));

439:     emit TransferShares(address(0), msg.sender, _USDYAmount);

455:     emit TokensBurnt(msg.sender, _rUSDYAmount);

470:     emit Transfer(_sender, _recipient, _amount);

471:     emit TransferShares(_sender, _recipient, _sharesToTransfer);

494:     emit Approval(_owner, _spender, _amount);

682:     emit TokensBurnt(_account, _amount);
```

### <a name="G-27"></a>[G-27] Use assembly to compute hashes to save gas

If the arguments to the encode call can fit into the scratch space (two words or fewer), then it's more efficient to use assembly to generate the hash (**80 gas**):

`keccak256(abi.encodePacked(x, y))` -> `assembly {mstore(0x00, a); mstore(0x20, b); let hash := keccak256(0x00, 0x40); }`

There are 3 instances:

- *DestinationBridge.sol* ( [#L99](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L99), [#L108](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L108), [#L238](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L238) ):

```solidity
99:     if (chainToApprovedSender[srcChain] != keccak256(abi.encode(srcAddr))) {

108:     bytes32 txnHash = keccak256(payload);

238:     chainToApprovedSender[srcChain] = keccak256(abi.encode(srcContractAddress));
```

### <a name="G-28"></a>[G-28] Low level `call` can be optimized with assembly

When using low-level calls, the `returnData` is copied to memory even if the variable is not utilized. The proper way to handle this is through a low level assembly call.
For example:
```solidity
(bool success,) = payable(receiver).call{gas: gas, value: value}("");
```
can be optimized to:
```solidity
bool success;
assembly {
    success := call(gas, receiver, value, 0, 0, 0, 0)
}

There are 2 instances:

- *SourceBridge.sol* ( [#L165-L167](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L165-L167) ):

```solidity
165:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
166:         value: exCallData[i].value
167:       }(exCallData[i].data);
```

- *rUSDYFactory.sol* ( [#L131-L133](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L131-L133) ):

```solidity
131:       (bool success, bytes memory ret) = address(exCallData[i].target).call{
132:         value: exCallData[i].value
133:       }(exCallData[i].data);
```

### <a name="G-29"></a>[G-29] Use `assembly` to write address/contract type storage values

Using `assembly { sstore(state.slot, addr)` instead of `state = addr` can save gas.

There are 6 instances:

- *rUSDY.sol* ( [#L139](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L139), [#L140](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L140), [#L663](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L663) ):

```solidity
139:     usdy = IUSDY(_usdy);

140:     oracle = IRWADynamicOracle(_oracle);

663:     oracle = IRWADynamicOracle(_oracle);
```

- *rUSDYFactory.sol* ( [#L82](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L82), [#L83](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L83), [#L84-L88](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L84-L88) ):

```solidity
82:     rUSDYImplementation = new rUSDY();

83:     rUSDYProxyAdmin = new ProxyAdmin();

84:     rUSDYProxy = new TokenProxy(
85:       address(rUSDYImplementation),
86:       address(rUSDYProxyAdmin),
87:       ""
88:     );
```

### <a name="G-30"></a>[G-30] Use `calldata` instead of `memory` for immutable arguments

Mark data types as `calldata` instead of `memory` where possible. This makes it so that the data is not automatically loaded into memory. If the data passed into the function does not need to be changed (like updating values in an array), it can be passed in as `calldata`. The one exception to this is if the argument must later be passed into another function that takes an argument that specifies `memory` storage.

There is 1 instance:

- *SourceBridge.sol* ( [#L121-L124](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L121-L124) ):

```solidity
/// @audit destinationChain
121:   function setDestinationChainContractAddress(
122:     string memory destinationChain,
123:     address contractAddress
124:   ) external onlyOwner {
```

### <a name="G-31"></a>[G-31] Newer versions of solidity are more gas efficient

The solidity language continues to pursue more efficient gas optimization schemes. Adopting a newer version of solidity can be more gas efficient.

There are 6 instances:

- *DestinationBridge.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *SourceBridge.sol* ( [#L1](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L1) ):

```solidity
1: pragma solidity 0.8.16;
```

- *IRWADynamicOracle.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *RWADynamicOracle.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *rUSDY.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

- *rUSDYFactory.sol* ( [#L16](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L16) ):

```solidity
16: pragma solidity 0.8.16;
```

### <a name="G-32"></a>[G-32] Don't transfer with zero amount to save gas

In Solidity, unnecessary operations can waste gas. For example, a transfer function without a zero amount check uses gas even if called with a zero amount, since the contract state remains unchanged. Implementing a zero amount check avoids these unnecessary function calls, saving gas and improving efficiency.

There is 1 instance:

- *DestinationBridge.sol* ( [#L324](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L324) ):

```solidity
324:     IRWALike(_token).transfer(owner(), balance);
```

### <a name="G-33"></a>[G-33] It costs more gas to initialize non-`constant`/non-`immutable` state variables to zero than to let the default of zero be applied

There are 9 instances:

- *DestinationBridge.sol* ( [#L134](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L134), [#L160](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L160), [#L264](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L264) ):

```solidity
134:     for (uint256 i = 0; i < thresholds.length; ++i) {

160:       for (uint256 i = 0; i < t.approvers.length; ++i) {

264:     for (uint256 i = 0; i < amounts.length; ++i) {
```

- *SourceBridge.sol* ( [#L164](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L164) ):

```solidity
164:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

- *RWADynamicOracle.sol* ( [#L77](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L77), [#L113](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L113), [#L129](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L129) ):

```solidity
77:     for (uint256 i = 0; i < length; ++i) {

113:     for (uint256 i = 0; i < length; ++i) {

129:     for (uint256 i = 0; i < length + 1; ++i) {
```

- *rUSDYFactory.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L44), [#L130](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L130) ):

```solidity
44:   bytes32 public constant DEFAULT_ADMIN_ROLE = bytes32(0);

130:     for (uint256 i = 0; i < exCallData.length; ++i) {
```

### <a name="G-34"></a>[G-34] Usage of `int`s/`uint`s smaller than 32 bytes incurs overhead

Using `ints`/`uints` smaller than 32 bytes may cost more gas. This is because the EVM operates on 32 bytes at a time, so if an element is smaller than 32 bytes, the EVM must perform more operations to reduce the size of the element from 32 bytes to the desired size.

There is 1 instance:

- *rUSDY.sol* ( [#L209](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L209) ):

```solidity
/// @audit uint8
209:   function decimals() public pure returns (uint8) {
```

### <a name="G-35"></a>[G-35] Multiple mappings can be replaced with a single struct mapping

Saves a storage slot for the mapping. Depending on the circumstances and sizes of types, can avoid a Gsset (**20000 gas**) per mapping combined. Reads and subsequent writes can also be cheaper when a function requires both values and they both fit in the same storage slot. Finally, if both fields are accessed in the same function, can save **~42 gas per access** due to [not having to recalculate the key's keccak256 hash](https://gist.github.com/IllIllI000/ec23a57daa30a8f8ca8b9681c8ccefb0) (Gkeccak256 - 30 gas) and that calculation's associated stack operations.

There are 7 instances:

- *DestinationBridge.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L44), [#L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L45), [#L51](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L51), [#L52](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L52), [#L53](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L53) ):

```solidity
44:   mapping(string => bytes32) public chainToApprovedSender;

45:   mapping(bytes32 => mapping(uint256 => bool)) public isSpentNonce;

51:   mapping(bytes32 => TxnThreshold) public txnToThresholdSet;

52:   mapping(string => Threshold[]) public chainToThresholds;

53:   mapping(bytes32 => Transaction) public txnHashToTransaction;
```

- *rUSDY.sol* ( [#L76](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L76), [#L79](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L79) ):

```solidity
76:   mapping(address => uint256) private shares;

79:   mapping(address => mapping(address => uint256)) private allowances;
```

### <a name="G-36"></a>[G-36] Multiple mappings with same keys can be combined into a single struct mapping for readability

Well-organized data structures make code reviews easier, which may lead to fewer bugs. Consider combining related mappings into mappings to structs, so it's clear what data is related.

There are 7 instances:

- *DestinationBridge.sol* ( [#L44](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L44), [#L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L45), [#L51](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L51), [#L52](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L52), [#L53](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L53) ):

```solidity
44:   mapping(string => bytes32) public chainToApprovedSender;

45:   mapping(bytes32 => mapping(uint256 => bool)) public isSpentNonce;

51:   mapping(bytes32 => TxnThreshold) public txnToThresholdSet;

52:   mapping(string => Threshold[]) public chainToThresholds;

53:   mapping(bytes32 => Transaction) public txnHashToTransaction;
```

- *rUSDY.sol* ( [#L76](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L76), [#L79](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L79) ):

```solidity
76:   mapping(address => uint256) private shares;

79:   mapping(address => mapping(address => uint256)) private allowances;
```

### <a name="G-37"></a>[G-37] Optimize names to save gas

`public`/`external` function names and `public` member variable names can be optimized to save gas. Below are the interfaces/abstract contracts that can be optimized so that the most frequently-called functions use the least amount of gas possible during method lookup. Method IDs that have two leading zero bytes can save 128 gas each during deployment, and renaming functions to have lower method IDs will save 22 gas per call, [per sorted position shifted](https://medium.com/joyso/solidity-how-does-function-name-affect-gas-consumption-in-smart-contract-47d270d8ac92).

There are 5 instances:

- *DestinationBridge.sol* ( [#L27](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L27) ):

```solidity
/// @audit addApprover(), removeApprover(), addChainSupport(), setThresholds(), setMintLimit(), setMintLimitDuration(), pause(), unpause(), rescueTokens(), getNumApproved(), TOKEN, AXELAR_GATEWAY, ALLOWLIST, approvers, chainToApprovedSender, isSpentNonce, VERSION, txnToThresholdSet, chainToThresholds, txnHashToTransaction
27: contract DestinationBridge is
```

- *SourceBridge.sol* ( [#L11](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol#L11) ):

```solidity
/// @audit burnAndCallAxelar(), setDestinationChainContractAddress(), pause(), unpause(), multiexcall(), destChainToContractAddr, TOKEN, AXELAR_GATEWAY, GAS_RECEIVER, VERSION, nonce
11: contract SourceBridge is Ownable, Pausable, IMulticall {
```

- *RWADynamicOracle.sol* ( [#L22](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol#L22) ):

```solidity
/// @audit getPriceData(), getPrice(), simulateRange(), setRange(), overrideRange(), pauseOracle(), unpauseOracle(), DAY, ranges, SETTER_ROLE, PAUSER_ROLE
22: contract RWADynamicOracle is IRWAOracle, AccessControlEnumerable, Pausable {
```

- *rUSDY.sol* ( [#L57](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L57) ):

```solidity
/// @audit initialize(), increaseAllowance(), decreaseAllowance(), getTotalShares(), sharesOf(), getSharesByRUSDY(), getRUSDYByShares(), transferShares(), wrap(), unwrap(), setOracle(), burn(), pause(), unpause(), setBlocklist(), setAllowlist(), setSanctionsList(), oracle, usdy, BPS_DENOMINATOR, USDY_MANAGER_ROLE, MINTER_ROLE, PAUSER_ROLE, BURNER_ROLE, LIST_CONFIGURER_ROLE
57: contract rUSDY is
```

- *rUSDYFactory.sol* ( [#L43](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol#L43) ):

```solidity
/// @audit deployrUSDY(), multiexcall(), DEFAULT_ADMIN_ROLE, rUSDYImplementation, rUSDYProxyAdmin, rUSDYProxy
43: contract rUSDYFactory is IMulticall {
```

### <a name="G-38"></a>[G-38] Using bitmap to store bool states can save gas

Using a bitmap instead of a bool array or a bool mapping to store boolean states can save gas fees. This is because the bitmap can store 256 boolean values in a single slot instead of 256 slots, which can save gas when writing bool values or when reading multiple bool values from the same slot.

There are 2 instances:

- *DestinationBridge.sol* ( [#L43](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L43), [#L45](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L45) ):

```solidity
43:   mapping(address => bool) public approvers;

45:   mapping(bytes32 => mapping(uint256 => bool)) public isSpentNonce;
```

### <a name="G-39"></a>[G-39] Consider activating via-ir for deploying

By using `--via-ir` or `{"viaIR": true}`, the compiler is able to use more advanced [multi-function optimizations](https://docs.soliditylang.org/en/v0.8.17/ir-breaking-changes.html#solidity-ir-based-codegen-changes), for extra gas savings.

There are 6 instances:

- [*DestinationBridge.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol)

- [*SourceBridge.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/SourceBridge.sol)

- [*IRWADynamicOracle.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/IRWADynamicOracle.sol)

- [*RWADynamicOracle.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/rwaOracles/RWADynamicOracle.sol)

- [*rUSDY.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol)

- [*rUSDYFactory.sol*](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDYFactory.sol)

### <a name="G-40"></a>[G-40] Use `!= 0` or `== 0` for unsigned integer comparison

Using `==0`, `!= 0` instead of `> 0`, `>= 1`, `< 1`, `<= 0` can save gas.

There are 3 instances:

- *DestinationBridge.sol* ( [#L159](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/bridge/DestinationBridge.sol#L159) ):

```solidity
/// @audit Replace with `!= 0`
159:     if (t.approvers.length > 0) {
```

- *rUSDY.sol* ( [#L435](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L435), [#L450](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L450) ):

```solidity
/// @audit Replace with `!= 0`
435:     require(_USDYAmount > 0, "rUSDY: can't wrap zero USDY tokens");

/// @audit Replace with `!= 0`
450:     require(_rUSDYAmount > 0, "rUSDY: can't unwrap zero rUSDY tokens");
```

### <a name="G-41"></a>[G-41] The result of a function call should be cached rather than re-calling the function

The function calls in solidity are expensive. If the same result of the same function calls are to be used several times, the result should be cached to reduce the gas consumption of repeated calls.

There is 1 instance:

- *rUSDY.sol* ( [#L575](https://github.com/code-423n4/2023-09-ondo/tree/623dd3c0ff3c4d8ce4ed563b96da50d08cd803c5/contracts/usdy/rUSDY.sol#L575) ):

```solidity
/// @audit `getRUSDYByShares(_sharesAmount)` is called on lines: 586, 592
575:   function _burnShares(
```
