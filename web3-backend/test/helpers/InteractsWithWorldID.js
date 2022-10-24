const { ethers } = require("hardhat");
const { poseidonContract } = require("circomlibjs");
const { ZkIdentity, Strategy } = require("@zk-kit/identity");
const { Semaphore, generateMerkleProof } = require("@zk-kit/protocols");

let semaphoreLibAddr;
let WorldId;
let leaves = [];
const prepareWorldID = async () => {
  semaphoreLibAddr = await _deploySemaphoreLibs();
};
const setUpWorldID = async () => {
  WorldId = await _deploySemaphore();
  const tx = await WorldId.createGroup(1, 20, 0);
  await tx.wait();
  return WorldId.address;
};
const registerIdentity = async (userAddress) => {
  const identity = new ZkIdentity(Strategy.MESSAGE, userAddress);
  leaves.push(identity.genIdentityCommitment());
  const tx = await WorldId.addMember(1, identity.genIdentityCommitment());
  await tx.wait();
};

const getRoot = async () => {
  return WorldId.getRoot(1);
};
const getProof = async (userAddress, externalNullifier, signal) => {
  const identity = new ZkIdentity(Strategy.MESSAGE, userAddress);
  const identityCommitment = identity.genIdentityCommitment();
  const witness = generateSemaphoreWitness(
    identity.getTrapdoor(),
    identity.getNullifier(),
    generateMerkleProof(20, BigInt(0), leaves, identityCommitment),
    hashBytes(externalNullifier),
    // update here if changing the signal (you might need to wrap in a `pack()` call if multiple arguments)
    signal
  );
  const { proof, publicSignals } = await Semaphore.genProof(
    witness,
    "./build/semaphore.wasm",
    "./build/semaphore_final.zkey"
  );
  return [publicSignals.nullifierHash, Semaphore.packToSolidityProof(proof)];
};
const generateSemaphoreWitness = (
  identityTrapdoor,
  identityNullifier,
  merkleProof,
  externalNullifier,
  signal
) => ({
  identityNullifier: identityNullifier,
  identityTrapdoor: identityTrapdoor,
  treePathIndices: merkleProof.pathIndices,
  treeSiblings: merkleProof.siblings,
  externalNullifier: externalNullifier,
  signalHash: hashBytes(signal),
});
const hashBytes = (signal) => {
  return (
    BigInt(ethers.utils.solidityKeccak256(["bytes"], [signal])) >> BigInt(8)
  );
};
const _deploySemaphoreLibs = async () => {
  const poseidonABI = poseidonContract.generateABI(2);
  const poseidonBytecode = poseidonContract.createCode(2);
  const [signer] = await ethers.getSigners();
  const PoseidonLibFactory = new ethers.ContractFactory(
    poseidonABI,
    poseidonBytecode,
    signer
  );
  const poseidonLib = await PoseidonLibFactory.deploy();
  await poseidonLib.deployed();
  const IncrementalBinaryTreeLibFactory = await ethers.getContractFactory(
    "IncrementalBinaryTree",
    {
      libraries: {
        PoseidonT3: poseidonLib.address,
      },
    }
  );
  const incrementalBinaryTreeLib =
    await IncrementalBinaryTreeLibFactory.deploy();
  await incrementalBinaryTreeLib.deployed();
  return incrementalBinaryTreeLib.address;
};
const _deploySemaphore = async () => {
  const SemaphoreFactory = await ethers.getContractFactory("Semaphore", {
    libraries: {
      IncrementalBinaryTree: semaphoreLibAddr,
    },
  });
  const contract = await SemaphoreFactory.deploy();
  await contract.deployed();
  return contract;
};

module.exports = {
  prepareWorldID,
  setUpWorldID,
  registerIdentity,
  getRoot,
  getProof,
};
