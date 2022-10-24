// imports
const { ethers, run, network } = require("hardhat");
const { startTokenSupply, verifyOnEtherScan } = require("../variables");
const fs = require("fs");
// async main
async function main() {
  let DeNewsManager = await deploy((contractName = "DeNewsManager"));
  let DeNewsToken = await deploy(
    (contractName = "DeNewsToken"),
    (constructor = [startTokenSupply])
  );
  let DeNewsVoting = await deploy((contractName = "DeNewsVoting"));
  let DeNewsMedia = await deploy((contractName = "DeNewsMedia"));

  // Verification
  if (
    verifyOnEtherScan &&
    network.config.chainId != 31337 &&
    process.env.ETHERSCAN_API_KEY
  ) {
    saveContractAddress(
      network.config.chainId,
      DeNewsManager.address,
      "DeNewsManager"
    );
    saveContractAddress(
      network.config.chainId,
      DeNewsToken.address,
      "DeNewsToken"
    );
    saveContractAddress(
      network.config.chainId,
      DeNewsVoting.address,
      "DeNewsVoting"
    );
    saveContractAddress(
      network.config.chainId,
      DeNewsMedia.address,
      "DeNewsMedia"
    );
    console.log(`Waiting for block confirmations ${DeNewsManager.address}`);
    await DeNewsManager.deployTransaction.wait(6);
    await verify(DeNewsManager.address);
    console.log(`Waiting for block confirmations ${DeNewsToken.address}`);
    await DeNewsToken.deployTransaction.wait(6);
    await verify(DeNewsToken.address, [startTokenSupply]);
    console.log(`Waiting for block confirmations ${DeNewsVoting.address}`);
    await DeNewsVoting.deployTransaction.wait(6);
    await verify(DeNewsVoting.address);
    console.log(`Waiting for block confirmations ${DeNewsMedia.address}`);
    await DeNewsMedia.deployTransaction.wait(6);
    await verify(DeNewsMedia.address);
  }
}

async function deploy(contractName, constructor = []) {
  const contract = await ethers.getContractFactory(contractName);
  console.log(`Deploying contract ${contractName}...`);
  const CONTRACT = await contract.deploy(...constructor);
  await CONTRACT.deployed();
  console.log("Done!");
  return CONTRACT;
}

// async function verify(contractAddress, args) {
const verify = async (contractAddress, args) => {
  console.log("Verifying contract...");
  try {
    await run("verify:verify", {
      address: contractAddress,
      constructorArguments: args,
    });
  } catch (error) {
    if (error.message.toLowerCase().includes("already verified")) {
      console.log("Already Verified!");
    } else {
      console.log(error);
    }
  }
};

const saveContractAddress = (chainId, address, name) => {
  let data = fs.readFileSync("deployed_contracts.json", "utf8");
  let obj = JSON.parse(data);
  obj[chainId][name] = address;
  fs.writeFileSync("deployed_contracts.json", JSON.stringify(obj));
};

// main
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
