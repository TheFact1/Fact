import { ethers } from "./ethers-5.6.esm.min.js";
import {
  contractAddressManager,
  contractAddressVoting,
  contractAddressToken,
  contractAddressMedia,
  abiManager,
  abiVoting,
  fakeHunters,
} from "./constant.js";

const targetChain = "0x1";

//Function for metamask connection
export async function connect() {
  if (typeof window.ethereum !== "undefined") {
    try {
      await ethereum.request({ method: "eth_requestAccounts" });
      const account = await ethereum.request({ method: "eth_accounts" });
      return account;
    } catch (error) {
      console.log(error);
    }
  } else {
    return "Please install MetaMask"; // Если аккаунт не подключен то поментяь название кнопки на это
  }
}

//Function for open disput
export async function openDisput(ballotId, password) {
  // const ballotId = 123; // сюда нужно подать id новости
  // password строка
  //Check network chain
  if ((await window.ethereum.request({ method: "eth_chainId" })) != "0x13881") {
    await window.ethereum.request({
      method: "wallet_switchEthereumChain",
      params: [{ chainId: "0x13881" }],
    });
  }
  console.log(ballotId);
  //Upload dependencies
  const provider = new ethers.providers.Web3Provider(window.ethereum);
  const signer = provider.getSigner();
  const contract = new ethers.Contract(
    contractAddressVoting,
    abiVoting,
    signer
  );
  const tokenAmount = "100000000000000000000";
  let cid = "";
  const hash = await contract.generateVoteHash(
    ballotId,
    tokenAmount,
    true,
    password
  );
  const transactionresponse = await contract.openVoting(ballotId, hash, hash);
}
//Human verification function
export async function verification(root, nullifierHash, proof) {
  const unpackedProof = ethers.utils.defaultAbiCoder.decode(
    ["uint256[8]"],
    proof
  )[0];
  // const root = 123; // сюда нужно подать root от human verification widjet
  // const nullifierHash = 123; // сюда нужно подать nullifierHash от human verification widjet
  // const proof = 123; // сюда нужно подать proof от human verification widjet
  if ((await window.ethereum.request({ method: "eth_chainId" })) != "0x13881") {
    await window.ethereum.request({
      method: "wallet_switchEthereumChain",
      params: [{ chainId: "0x13881" }],
    });
  }
  const provider = new ethers.providers.Web3Provider(window.ethereum);
  const signer = provider.getSigner();
  const contract = new ethers.Contract(
    contractAddressManager,
    abiManager,
    signer
  );
  const transactionresponse = await contract.humanVerify(1, nullifierHash, 1);
}
//deposit function
export async function deposit(amountDeposit) {
  // const amountDeposit = 123; // сюда нужно подать amount введенный пользователем
  if ((await window.ethereum.request({ method: "eth_chainId" })) != "0x13881") {
    await window.ethereum.request({
      method: "wallet_switchEthereumChain",
      params: [{ chainId: "0x13881" }],
    });
  }
  const provider = new ethers.providers.Web3Provider(window.ethereum);
  const signer = provider.getSigner();
  const contract = new ethers.Contract(
    contractAddressManager,
    abiManager,
    signer
  );
  let convertAmountDeposit = amountDeposit * 10 ** 18;
  const transactionresponse = await contract.deposit(convertAmountDeposit);
}

//FakeHunter registration function
export async function fakeHunterRegist(amountDeposit) {
  // const amountDeposit = 123; // сюда нужно подать amount введенный пользователем
  if ((await window.ethereum.request({ method: "eth_chainId" })) != "0x13881") {
    await window.ethereum.request({
      method: "wallet_switchEthereumChain",
      params: [{ chainId: "0x13881" }],
    });
  }
  const provider = new ethers.providers.Web3Provider(window.ethereum);
  const signer = provider.getSigner();
  const contract = new ethers.Contract(
    contractAddressManager,
    abiManager,
    signer
  );
  let convertAmountDeposit = amountDeposit * 10 ** 18;
  const transactionresponse = await contract.fakeHuntersRegistration(
    convertAmountDeposit
  );
}

//function vote

export async function vote(voteValue, password, ballotID, amount) {
  if ((await window.ethereum.request({ method: "eth_chainId" })) != "0x13881") {
    await window.ethereum.request({
      method: "wallet_switchEthereumChain",
      params: [{ chainId: "0x13881" }],
    });
  }

  console.log(ballotID);
  console.log(amount);
  const provider = new ethers.providers.Web3Provider(window.ethereum);
  const signer = provider.getSigner();
  const contract = new ethers.Contract(
    contractAddressVoting,
    abiVoting,
    signer
  );
  let convertAmount = amount * 10 ** 18;
  const transactionresponse1 = await contract.generateVoteHash(
    ballotID,
    convertAmount,
    voteValue,
    password
  );
  const transactionresponse2 = await contract.vote(
    ballotID,
    convertAmount,
    transactionresponse1
  );
}
// function reveal vote

export async function revealVote(voteValue, ballotID, password) {
  if ((await window.ethereum.request({ method: "eth_chainId" })) != "0x13881") {
    await window.ethereum.request({
      method: "wallet_switchEthereumChain",
      params: [{ chainId: "0x13881" }],
    });
  }
  console.log(voteValue);
  console.log(ballotID);

  const provider = new ethers.providers.Web3Provider(window.ethereum);
  const signer = provider.getSigner();
  const contract = new ethers.Contract(
    contractAddressVoting,
    abiVoting,
    signer
  );
  const transactionresponse = await contract.revealVote(
    ballotID,
    voteValue,
    password
  );
}
//Script for chekc news to fake/fact
let provider = new ethers.providers.getDefaultProvider(
  "https://polygon-mumbai.g.alchemy.com/v2/HmhxDKbD_E6eAnDuRRtR_mm8wN89zwNr"
);
let privateKey = new ethers.Wallet(
  "6bfc668323f0219d20f2c1719eccdbdecf1f17754534c27951e514c975336413"
);
let Signer = privateKey.connect(provider);
const contract = new ethers.Contract(contractAddressVoting, abiVoting, Signer);

//Script for chekc news to fake/fact
async function checkNewsResult(newsId) {
  let transact = await contract.votingArchiveInfo(newsId);
  if (parseInt(transact[2]) > parseInt(transact[3])) {
    return "Fake news"; //Если выдает это гоше ставь плашку фейк
  } else {
    return "Fact News"; //Если это то плашку факт
  }
}
