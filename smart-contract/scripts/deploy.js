const hre = require("hardhat");

async function main() {
  const [deployer] = await hre.ethers.getSigners();

  console.log("Deploying contract with account:", deployer.address);

  const Wikimint = await hre.ethers.getContractFactory("Wikimint");
  const wikimint = await Wikimint.deploy();

  await wikimint.deployed();

  console.log("Wikimint deployed to:", wikimint.address);
}

main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
