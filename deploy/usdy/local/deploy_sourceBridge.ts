import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";
import { PROD_GUARDIAN_USDY } from "../../mainnet_constants";
import { parseUnits } from "ethers/lib/utils";
const { ethers } = require("hardhat");
const inquire = require("inquirer");

const deploySourceBridge: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployments, getNamedAccounts } = hre;
  const { save } = deployments;
  const { deployer } = await getNamedAccounts();
  const { deploy } = deployments;

  /// @notice: update based on chain deploying to
  const AXELAR_GATEWAY = "0x4F4495243837681061C4743b74B3eEdf548D56A5";
  const AXELAR_GAS_SERVICE = "0x2d5d7d31F671F86C782533cc367F14109a082712";

  const usdy = await ethers.getContract("USDY");

  const signers = await ethers.getSigners();
  const guardian = signers[1];

  await deploy("SourceBridge", {
    from: deployer,
    args: [usdy.address, AXELAR_GATEWAY, AXELAR_GAS_SERVICE, guardian.address],
    logs: true,
  });
};

deploySourceBridge.tags = ["Prod-USDY-SourceBridge", "Local"];
deploySourceBridge.dependencies = ["usdyManager"];
export default deploySourceBridge;
