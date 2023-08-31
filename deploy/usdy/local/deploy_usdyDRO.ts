import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";
import { parseUnits } from "ethers/lib/utils";
const { ethers } = require("hardhat");

const deploy_usdyDynamicRateOracle: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployments, getNamedAccounts } = hre;
  const { deployer } = await getNamedAccounts();
  const { deploy } = deployments;
  const signers = await ethers.getSigners();

  // Admin Roles for DRO
  const guardian = signers[1];
  const setter = signers[2];
  const pauser = signers[3];

  // First Range Params for DRO
  const firstRangeStart = 1690833600;
  console.log(firstRangeStart.toString());
  const firstRangeEnd = 1693512000;
  const dailyIR = parseUnits("1.00013368", 27);
  const rangeStart = parseUnits("1", 18);

  await deploy("RWADynamicOracle", {
    from: deployer,
    args: [
      guardian.address,
      setter.address,
      pauser.address,
      firstRangeStart,
      firstRangeEnd,
      dailyIR,
      rangeStart,
    ],
    log: true,
  });
};
deploy_usdyDynamicRateOracle.tags = ["Local", "oracle-usdy"];
export default deploy_usdyDynamicRateOracle;
