// imports
const { ethers, network } = require("hardhat");
const { fakeHuntersDeposit } = require("../variables");
const fs = require("fs");

async function main() {
  let data = fs.readFileSync("deployed_contracts.json", "utf8");
  const addressDeNewsManager =
    JSON.parse(data)[network.config.chainId]["DeNewsManager"];
  const addressDeNewsVoting =
    JSON.parse(data)[network.config.chainId]["DeNewsVoting"];
  const addressDeNewsToken =
    JSON.parse(data)[network.config.chainId]["DeNewsToken"];
  const addressDeNewsMedia =
    JSON.parse(data)[network.config.chainId]["DeNewsMedia"];

  const DeNewsManager = await ethers.getContractAt(
    "DeNewsManager",
    addressDeNewsManager
  );
  const DeNewsVoting = await ethers.getContractAt(
    "DeNewsVoting",
    addressDeNewsVoting
  );
  const DeNewsToken = await ethers.getContractAt(
    "DeNewsToken",
    addressDeNewsToken
  );
  const DeNewsMedia = await ethers.getContractAt(
    "DeNewsMedia",
    addressDeNewsMedia
  );

  console.log(`Got contract DeNewsManager at ${DeNewsManager.address}`);
  console.log(`Got contract DeNewsVoting at ${DeNewsVoting.address}`);
  console.log(`Got contract DeNewsToken at ${DeNewsToken.address}`);
  console.log(`Got contract DeNewsMedia at ${DeNewsMedia.address}`);

  console.log("Set dependecies for DeNewsManager...");
  const txManager1 = await DeNewsManager.setDeNewsMediaContract(
    DeNewsMedia.address
  );
  await txManager1.wait();
  const txManager2 = await DeNewsManager.setDeNewsVotingContract(
    DeNewsVoting.address
  );
  await txManager2.wait();
  const txManager3 = await DeNewsManager.setDeNewsTokenContract(
    DeNewsToken.address
  );
  await txManager3.wait();

  const txManager4 = await DeNewsManager.setFakeHunterDeposit(
    fakeHuntersDeposit
  );
  await txManager4.wait();
  console.log("Done!");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
