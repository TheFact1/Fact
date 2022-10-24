// imports
const { ethers, network } = require("hardhat");

const fs = require("fs");

async function main() {
  let data = fs.readFileSync("deployed_contracts.json", "utf8");
  const addressDeNewsManager =
    JSON.parse(data)[network.config.chainId]["DeNewsManager"];

  const addressDeNewsToken =
    JSON.parse(data)[network.config.chainId]["DeNewsToken"];

  const DeNewsManager = await ethers.getContractAt(
    "DeNewsManager",
    addressDeNewsManager
  );

  const DeNewsToken = await ethers.getContractAt(
    "DeNewsToken",
    addressDeNewsToken
  );

  console.log(`Got contract DeNewsManager at ${DeNewsManager.address}`);

  console.log(`Got contract DeNewsToken at ${DeNewsToken.address}`);

  console.log("Set dependecies for DeNewsToken...");
  const txToken1 = await DeNewsToken.setDeNewsManagerContract(
    DeNewsManager.address
  );
  await txToken1.wait();
  console.log("Done!");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
