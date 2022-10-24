import * as EpnsAPI from "@epnsproject/sdk-restapi";
import { Web3Storage, getFilesFromPath } from "web3.storage";
import * as ethers from "ethers";
import * as fs from "fs";
import * as abiDecoder from "abi-decoder";

import {
  contractAddressManager,
  contractAddressVoting,
  contractAddressToken,
  contractAddressMedia,
  abiManager,
  abiVoting,
  abiMedia,
  fakeHunters,
} from "./constant.js";
//const abiDecoder = require("abi-decoder");

const PK = "936ea84aa52ce328bea9cbe6eef2f737b34e63f0bf626351b6bf2ffa9c361a66";
const Pkey = `936ea84aa52ce328bea9cbe6eef2f737b34e63f0bf626351b6bf2ffa9c361a66`;
const signer = new ethers.Wallet(Pkey);

let data = fs.readFileSync("web3-backend/dataBase.json");

let obj = JSON.parse(data);
console.log(obj.allUsers);
const sendNotification = async (a) => {
  try {
    const apiResponse = await EpnsAPI.payloads.sendNotification({
      signer,
      type: 4,
      identityType: 2,
      notification: {
        title: `New disput was opened`,
        body: `Hurry up to vote`,
      },
      payload: {
        title: "2 hfp",
        body: `dasfke!`,
        cta: "we",
        img: "",
      },
      recipients: a,
      channel: "eip155:42:0x342773608d1eBa2cCd5354AE80524841b390E70b",
      env: "staging",
    });

    // apiResponse?.status === 204, if sent successfully!
    console.log("API repsonse: ", apiResponse);
  } catch (err) {
    console.error("Error: ", err);
  }
};

const sendNotificationB = async (a) => {
  try {
    const apiResponse = await EpnsAPI.payloads.sendNotification({
      signer,
      type: 4,
      identityType: 2,
      notification: {
        title: `End of voting`,
        body: `Check results!`,
      },
      payload: {
        title: "End of voting",
        body: `Check results!`,
        cta: "we",
        img: "",
      },
      recipients: a,
      channel: "eip155:42:0x342773608d1eBa2cCd5354AE80524841b390E70b",
      env: "staging",
    });
    // apiResponse?.status === 204, if sent successfully!
    console.log("API repsonse: ", apiResponse);
  } catch (err) {
    console.error("Error: ", err);
  }
};

const sendNotificationC = async (a) => {
  try {
    const apiResponse = await EpnsAPI.payloads.sendNotification({
      signer,
      type: 3,
      identityType: 2,
      notification: {
        title: `Your disput was opened`,
        body: `!`,
      },
      payload: {
        title: "End of voting",
        body: `Check results!`,
        cta: "we",
        img: "",
      },
      recipients: a,
      channel: "eip155:42:0x342773608d1eBa2cCd5354AE80524841b390E70b",
      env: "staging",
    });

    console.log("API repsonse: ", apiResponse);
  } catch (err) {
    console.error("Error: ", err);
  }
};

async function storeFiles() {
  const token =
    "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiJkaWQ6ZXRocjoweGQ0NzNGZjBFRjQ0NDQzRkUzRTk4OTFCMzg2NUQ2MjNENmIxOTVlOTAiLCJpc3MiOiJ3ZWIzLXN0b3JhZ2UiLCJpYXQiOjE2NjM1NzgxNTkyODEsIm5hbWUiOiJldGhvbmxpbmUifQ.6E6l-cBPOc2oUDmPkGXiZoRsmQWXVTj0lJgf6B4YhXQ";
  const client = new Web3Storage({ token });
  const files = await getFilesFromPath(
    "/home/tamaztamaz/DeNews/web3-backend/3.txt"
  );
  // const files = await getFilesFromPath("web3_backend/disputes/" + a + ".txt");
  const cid = await client.put(files);
  return cid;
}

let provider = new ethers.providers.getDefaultProvider(
  "https://polygon-mumbai.g.alchemy.com/v2/HmhxDKbD_E6eAnDuRRtR_mm8wN89zwNr"
);
let privateKey = new ethers.Wallet(
  "6bfc668323f0219d20f2c1719eccdbdecf1f17754534c27951e514c975336413"
);
let Signer = privateKey.connect(provider);

abiDecoder.addABI(abiVoting);

async function checkNetwork() {
  const a = await provider.getBlockNumber();
  const b = await provider.getBlockWithTransactions(a);
  console.log(a);
  for (let i = 0; i < b.transactions.length; i++) {
    if (b.transactions[i].to == contractAddressVoting) {
      const testData = b.transactions[i].data;
      const decodedData = abiDecoder.decodeMethod(testData);
      let data = decodedData;
      if (data.name == "openVoting") {
        console.log("dispute was opened");
        let sender = "eip155:42:" + b.transactions[i].from;
        let newsID = data.params[0].value;
        sendNotification(obj.allUsers);
        sendNotificationC(sender);
        let cid = storeFiles(newsID);
        let contract = (contractAddressMedia, abiMedia, Signer);
      } else if (data.name == "endOfVoting") {
        console.log("voting end");
        let newsID = data.params[0].value;
        sendNotificationB(obj.newsID);
      } else if (data.name == "revealVote") {
        console.log("reveal vote");
        let addressSender = b.transactions[i].from;
        let newsID = data.params[0].value;
        fs.readFile(
          "dataBaseForSend.json",
          "utf8",
          function readFileCallback(err, data) {
            if (err) {
              console.log(err);
            } else {
              obj = JSON.parse(data);
              obj.newsID.push("eip155:42:" + addressSender);
              json = JSON.stringify(obj);
              fs.writeFile(
                "dataBaseForSend.json",
                json,
                "utf8",
                function (error) {
                  if (error) {
                    throw error;
                  }
                }
              );
            }
          }
        );
      }
    }
  }
}
let timerId = setInterval(() => checkNetwork(), 5000);
console.log(await storeFiles());
