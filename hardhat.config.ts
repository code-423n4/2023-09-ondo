import "@nomiclabs/hardhat-ethers";
import "@nomiclabs/hardhat-etherscan";
import "@nomiclabs/hardhat-waffle";
import "@typechain/hardhat";
import "dotenv/config";
import "hardhat-contract-sizer";
import "hardhat-deploy";
import "hardhat-gas-reporter";
import "solidity-coverage";
import "@openzeppelin/hardhat-upgrades";

import { HardhatUserConfig } from "hardhat/config";

// You need to export an object to set up your config
// Go to https://hardhat.org/config/ to learn more
const config: HardhatUserConfig = {
  solidity: {
    compilers: [
      {
        version: "0.8.16",
        settings: {
          optimizer: {
            enabled: true,
            runs: 100,
          },
        },
      },
      {
        version: "0.7.0",
        settings: {
          optimizer: {
            enabled: true,
            runs: 100,
          },
        },
      },
      {
        version: "0.6.12",
        settings: {
          optimizer: {
            enabled: true,
            runs: 100,
          },
        },
      },
      {
        version: "0.4.24",
        settings: {
          optimizer: {
            enabled: true,
            runs: 200,
          },
        },
      },
    ],
  },
  networks: {
    hardhat: {
      accounts: { mnemonic: process.env.MNEMONIC },
      forking: {
        url: process.env.MAINNET_RPC_URL!,
        blockNumber: parseInt("17230520"),
      },
      chainId: process.env.FORKING_CHAIN_ID
        ? parseInt(process.env.FORKING_CHAIN_ID)
        : 1337,
      live: false,
      gas: 10_000_000,
      gasPrice: 103112366939,
    },
    mainnet: {
      accounts: [process.env.MAINNET_PRIVATE_KEY!],
      url: process.env.MAINNET_RPC_URL!,
      gas: "auto",
      live: true,
    },
    matic: {
      accounts: [process.env.MAINNET_PRIVATE_KEY!],
      url: process.env.MAINNET_RPC_URL_POLYGON!,
      gas: "auto",
      live: true,
    },
  },
  mocha: {
    timeout: 60 * 30 * 1000,
  },
  etherscan: {
    apiKey: process.env.ETHERSCAN_API_KEY,
  },
  namedAccounts: {
    deployer: 0,
  },
  gasReporter: {
    enabled: process.env.REPORT_GAS ? true : false,
  },
};

export default config;
