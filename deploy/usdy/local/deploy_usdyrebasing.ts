import { HardhatRuntimeEnvironment } from "hardhat/types";
import { DeployFunction } from "hardhat-deploy/types";
import { SANCTION_ADDRESS } from "../../mainnet_constants";
const { ethers } = require("hardhat");

const deploy_rUSDY: DeployFunction = async function (
  hre: HardhatRuntimeEnvironment
) {
  const { deployments, getNamedAccounts } = hre;
  const { deployer } = await getNamedAccounts();
  const { deploy } = deployments;
  const signers = await ethers.getSigners();

  const guardian = signers[1];

  await deploy("rUSDYFactory", {
    from: deployer,
    args: [guardian.address],
    log: true,
  });

  const factory = await ethers.getContract("rUSDYFactory");
  const blocklist = await ethers.getContract("Blocklist");
  const allowlist = await ethers.getContract("Allowlist");
  const usdy = await ethers.getContract("USDY");
  const oracle = await ethers.getContract("RWADynamicOracle");

  // Deploy from factory
  await factory
    .connect(guardian)
    .deployrUSDY(
      blocklist.address,
      allowlist.address,
      SANCTION_ADDRESS,
      usdy.address,
      oracle.address
    );

  let rUSDYproxy = await factory.rUSDYProxy();
  let rUSDYProxyAdmin = await factory.rUSDYProxyAdmin();
  let rUSDYImpl = await factory.rUSDYImplementation();

  console.log(`\nThe rUSDY proxy is deployed @: ${rUSDYproxy}`);
  console.log(`The rUSDY proxy admin is deployed @: ${rUSDYProxyAdmin}`);
  console.log(`The rUSDY Implementation is deployed @: ${rUSDYImpl}`);

  const rUSDYArtifact = await deployments.getExtendedArtifact("rUSDY");
  const paAtrifact = await deployments.getExtendedArtifact("ProxyAdmin");

  let rUSDYProxied = {
    address: rUSDYproxy,
    ...rUSDYArtifact,
  };
  let rUSDYAdmin = {
    address: rUSDYProxyAdmin,
    ...paAtrifact,
  };
  let rUSDYImplementation = {
    address: rUSDYImpl,
    ...rUSDYArtifact,
  };

  await deployments.save("rUSDY", rUSDYProxied);
  await deployments.save("rUSDYProxyAdmin", rUSDYAdmin);
  await deployments.save("rUSDYImplementation", rUSDYImplementation);
};

deploy_rUSDY.tags = ["Local", "rUSDY"];
deploy_rUSDY.dependencies = ["oracle-usdy"];
export default deploy_rUSDY;
