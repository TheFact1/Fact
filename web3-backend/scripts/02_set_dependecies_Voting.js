// imports
const { ethers, network } = require("hardhat");
const {
  fakeHunterVoteAmount,
  fakeHunterReward,
  userVoteAmount,
  fakeHunterRatingDelta,
  voteTime,
  revealTime,
} = require("../variables");
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

  const DeNewsMedia = await ethers.getContractAt(
    "DeNewsMedia",
    addressDeNewsMedia
  );

  console.log(`Got contract DeNewsManager at ${DeNewsManager.address}`);
  console.log(`Got contract DeNewsVoting at ${DeNewsVoting.address}`);

  console.log(`Got contract DeNewsMedia at ${DeNewsMedia.address}`);

  console.log("Set dependecies for DeNewsVoting...");
  const txVoting1 = await DeNewsVoting.setDeNewsManagerContract(
    DeNewsManager.address
  );
  await txVoting1.wait();
  const txVoting2 = await DeNewsVoting.setDeNewsMediaContract(
    DeNewsMedia.address
  );
  await txVoting2.wait();
  const txVoting3 = await DeNewsVoting.setFakeHunterVoteAmount(
    fakeHunterVoteAmount
  );
  await txVoting3.wait();
  const txVoting4 = await DeNewsVoting.setFakeHunterReward(fakeHunterReward);
  await txVoting4.wait();
  const txVoting5 = await DeNewsVoting.setFakeHunterRatingDelta(
    fakeHunterRatingDelta
  );
  await txVoting5.wait();
  const txVoting6 = await DeNewsVoting.setUserVoteAmount(userVoteAmount);
  await txVoting6.wait();
  const txVoting7 = await DeNewsVoting.setVoteTime(voteTime);
  await txVoting7.wait();
  const txVoting8 = await DeNewsVoting.setRevealTime(revealTime);
  await txVoting8.wait();
  console.log("Done!");
}

main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
