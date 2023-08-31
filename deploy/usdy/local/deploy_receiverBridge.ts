import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";
import { parseUnits } from "ethers/lib/utils";
const { ethers } = require("hardhat");

const deployReceiver: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployments, getNamedAccounts } = hre;
  const { save } = deployments;
  const { deployer } = await getNamedAccounts();
  const { deploy } = deployments;

  /// @notice: update based on chain deploying to
  const AXELAR_GATEWAY = "0x4F4495243837681061C4743b74B3eEdf548D56A5";

  const signers = await ethers.getSigners();

  const guardian = signers[1];
  const ondoSigner = signers[12];

  const usdy = await ethers.getContract("USDY");
  const allowlist = await ethers.getContract("Allowlist");

  await deploy("DestinationBridge", {
    from: deployer,
    args: [
      usdy.address,
      AXELAR_GATEWAY,
      allowlist.address,
      ondoSigner.address,
      guardian.address,
      parseUnits("100000", 18),
      86400,
    ],
    log: true,
  });
};

deployReceiver.tags = ["Local", "DestinationBridge"];
deployReceiver.dependencies = ["usdyManager"];
export default deployReceiver;
