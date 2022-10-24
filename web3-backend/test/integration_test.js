const { expect } = require("chai");
const { ethers } = require("hardhat");
const {
  loadFixture,
  time,
} = require("@nomicfoundation/hardhat-network-helpers");
const {
  startTokenSupply,
  fakeHuntersDeposit,
  fakeHunterVoteAmount,
  fakeHunterReward,
  userVoteAmount,
  fakeHunterRatingDelta,
} = require("../variables");
const {
  getProof,
  getRoot,
  prepareWorldID,
  registerIdentity,
  setUpWorldID,
} = require("./helpers/InteractsWithWorldID");

describe("Integration test", function () {
  async function deployContractFixture() {
    console.log("Deploying contracts.....");
    const ManagerContract = await ethers.getContractFactory("DeNewsManager");
    const Manager = await ManagerContract.deploy();
    await Manager.deployed();

    const VotingContract = await ethers.getContractFactory("DeNewsVoting");
    const Voting = await VotingContract.deploy();
    await Voting.deployed();

    const TokenContract = await ethers.getContractFactory("DeNewsToken");
    const Token = await TokenContract.deploy(startTokenSupply);
    await Token.deployed();

    const MediaContract = await ethers.getContractFactory("DeNewsMedia");
    const Media = await MediaContract.deploy();
    await Media.deployed();
    console.log("Done!");

    console.log("Set dependecies for Manager contract....");
    const txManager1 = await Manager.setDeNewsMediaContract(Media.address);
    await txManager1.wait();
    const txManager2 = await Manager.setDeNewsVotingContract(Voting.address);
    await txManager2.wait();
    const txManager3 = await Manager.setDeNewsTokenContract(Token.address);
    await txManager3.wait();
    const txManager4 = await Manager.setFakeHunterDeposit(fakeHuntersDeposit);
    await txManager4.wait();
    console.log("Done!");

    console.log("Set dependecies for Voting contract....");
    const txVoting1 = await Voting.setDeNewsManagerContract(Manager.address);
    await txVoting1.wait();
    const txVoting2 = await Voting.setDeNewsMediaContract(Media.address);
    await txVoting2.wait();
    const txVoting3 = await Voting.setFakeHunterVoteAmount(
      fakeHunterVoteAmount
    );
    await txVoting3.wait();
    const txVoting4 = await Voting.setFakeHunterReward(fakeHunterReward);
    await txVoting4.wait();
    const txVoting5 = await Voting.setFakeHunterRatingDelta(
      fakeHunterRatingDelta
    );
    await txVoting5.wait();
    const txVoting6 = await Voting.setUserVoteAmount(userVoteAmount);
    await txVoting6.wait();
    const txVoting7 = await Voting.setVoteTime("10");
    await txVoting7.wait();
    const txVoting8 = await Voting.setRevealTime("17");
    await txVoting8.wait();
    console.log("Done!");

    console.log("Set dependecies for Token contract....");
    const txToken1 = await Token.setDeNewsManagerContract(Manager.address);
    await txToken1.wait();
    console.log("Done!");

    console.log("Set dependecies for Media contract....");
    const txMedia1 = await Media.setDeNewsManagerContract(Manager.address);
    await txMedia1.wait();
    const txMedia2 = await Media.setDeNewsVotingContract(Voting.address);
    await txMedia2.wait();
    const PUSHCommMockContract = await ethers.getContractFactory(
      "PUSHCommMock"
    );
    const PUSHCommMock = await PUSHCommMockContract.deploy();
    await PUSHCommMock.deployed();
    const txMedia3 = await Media.setPUSHCommContract(PUSHCommMock.address);
    await txMedia3.wait();
    const txMedia4 = await Media.setEPNSChannel(PUSHCommMock.address);
    await txMedia4.wait();
    console.log("Done!");

    const [owner, account1, account2, account3] = await ethers.getSigners();

    console.log("Transfer tokens for accounts...");
    const txTransfer1 = await Token.transfer(
      account1.address,
      "500000000000000000000"
    );
    await txTransfer1.wait();
    const txTransfer2 = await Token.transfer(
      account2.address,
      "500000000000000000000"
    );
    await txTransfer2.wait();
    const txTransfer3 = await Token.transfer(
      account3.address,
      "500000000000000000000"
    );
    await txTransfer3.wait();

    console.log("Set approve for Token contract...");
    const txApprove1 = await Token.connect(account1).approve(
      Manager.address,
      "1000000000000000000000000"
    );
    await txApprove1.wait();
    const txApprove2 = await Token.connect(account2).approve(
      Manager.address,
      "1000000000000000000000000"
    );
    await txApprove2.wait();
    const txApprove3 = await Token.connect(account3).approve(
      Manager.address,
      "1000000000000000000000000"
    );
    await txApprove3.wait();
    const txApprove4 = await Token.approve(
      Manager.address,
      "1000000000000000000000000"
    );
    await txApprove4.wait();
    console.log("Done!");

    console.log("Work with WorldId...");
    await prepareWorldID();
    const worldIDAddress = await setUpWorldID();
    const txSetWorldId = await Manager.setWorldIdContract(worldIDAddress);
    await txSetWorldId.wait();
    await registerIdentity(owner.address);
    await registerIdentity(account1.address);
    await registerIdentity(account2.address);
    await registerIdentity(account3.address);
    const [nullifierHash, proof] = await getProof(
      owner.address,
      Manager.address,
      owner.address
    );
    const [nullifierHash1, proof1] = await getProof(
      account1.address,
      Manager.address,
      account1.address
    );
    const [nullifierHash2, proof2] = await getProof(
      account2.address,
      Manager.address,
      account2.address
    );
    const [nullifierHash3, proof3] = await getProof(
      account3.address,
      Manager.address,
      account3.address
    );
    console.log("Done!");

    console.log("Human verification....");
    const txHumanVerify = await Manager.humanVerify(
      await getRoot(),
      nullifierHash,
      proof
    );
    await txHumanVerify.wait();
    const txHumanVerify1 = await Manager.connect(account1).humanVerify(
      await getRoot(),
      nullifierHash1,
      proof1
    );
    await txHumanVerify1.wait();
    const txHumanVerify2 = await Manager.connect(account2).humanVerify(
      await getRoot(),
      nullifierHash2,
      proof2
    );
    await txHumanVerify2.wait();
    const txHumanVerify3 = await Manager.connect(account3).humanVerify(
      await getRoot(),
      nullifierHash3,
      proof3
    );
    await txHumanVerify3.wait();
    console.log("Done!");

    return {
      Manager,
      Voting,
      Token,
      Media,
      owner,
      account1,
      account2,
      account3,
    };
  }
  /*-----------------------------------------------------------------*/
  describe("Full cycle", function () {
    it("Everything is working", async function () {
      const {
        Manager,
        Voting,
        Token,
        Media,
        owner,
        account1,
        account2,
        account3,
      } = await loadFixture(deployContractFixture);

      console.log("Check registration for fake hunter");
      await expect(
        Manager.connect(account1).fakeHuntersRegistration("10")
      ).to.be.revertedWith("You don't have enough tokens!");
      const txHunterRegistration1 = await Manager.connect(
        account1
      ).fakeHuntersRegistration("200000000000000000000");
      await txHunterRegistration1.wait();
      await expect(
        Manager.connect(account1).fakeHuntersRegistration(
          "200000000000000000000"
        )
      ).to.be.revertedWith("You are already registred!");
      const txHunterRegistration2 = await Manager.connect(
        account2
      ).fakeHuntersRegistration("200000000000000000000");
      await txHunterRegistration2.wait();
      expect(await Manager.fakeHuntersInfo(account1.address)).to.deep.equal([
        true,
        100,
      ]);
      expect(await Manager.fakeHuntersInfo(account3.address)).to.deep.equal([
        false,
        0,
      ]);
      console.log("Done!");

      console.log("Check deposits...");
      const txUserDeposit = await Manager.connect(account3).deposit(
        "200000000000000000000"
      );
      await txUserDeposit.wait();
      expect(await Manager.depositInfo(account3.address)).to.equal(
        "200000000000000000000"
      );
      const txOwnerDeposit = await Manager.deposit("200000000000000000000");
      await txOwnerDeposit.wait();
      expect(await Manager.depositInfo(account3.address)).to.equal(
        "200000000000000000000"
      );
      console.log("Done!");

      console.log("Open voting...");
      const voteHash1 = await Voting.generateVoteHash(
        0,
        "100000000000000000000",
        true,
        "Qwertyu*"
      );
      await expect(
        Voting.connect(account3).openVoting(
          0,
          "QmSKUXj218ZPvcNTb2teqpUXyx11eFP6WahYVaFTkns3gt",
          voteHash1
        )
      ).to.be.revertedWith("You are not an accredited fake hunter!");
      const txOpenVoting = await Voting.connect(account1).openVoting(
        0,
        "QmSKUXj218ZPvcNTb2teqpUXyx11eFP6WahYVaFTkns3gt",
        voteHash1
      );
      await txOpenVoting.wait();
      await expect(
        Voting.connect(account2).openVoting(
          0,
          "QmSKUXj218ZPvcNTb2teqpUXyx11eFP6WahYVaFTkns3gt",
          voteHash1
        )
      ).to.be.revertedWith("DeNewsVoting is in progress or already finished!");
      console.log("Done!");

      console.log("Check that nft is correct...");
      expect(await Media.ownerOf(0)).to.equal(Manager.address);
      expect(await Media.tokenURI(0)).to.equal(
        "ipfs://QmSKUXj218ZPvcNTb2teqpUXyx11eFP6WahYVaFTkns3gt"
      );
      console.log("Done!");

      console.log("Voting process...");
      const voteHash2 = await Voting.generateVoteHash(
        0,
        "200000000000000000000",
        false,
        "Qwertyu*"
      );
      await expect(
        Voting.connect(account2).vote(0, "200000000000000000000000", voteHash2)
      ).to.be.revertedWith("You don't have enough money to vote!");
      await expect(
        Voting.connect(account2).vote(0, "20", voteHash2)
      ).to.be.revertedWith("Need more tokens!");
      const txVoting1 = await Voting.connect(account2).vote(
        0,
        "200000000000000000000",
        voteHash2
      );
      await txVoting1.wait();
      const voteHash3 = await Voting.generateVoteHash(
        0,
        "150000000000000000000",
        true,
        "Qwertyu*"
      );
      await expect(
        Voting.connect(account3).vote(1, "100000000000000000000", voteHash3)
      ).to.be.revertedWith("DeNewsVoting is closed!");
      const txVoting2 = await Voting.connect(account3).vote(
        0,
        "150000000000000000000",
        voteHash3
      );
      await txVoting2.wait();
      await expect(
        Voting.connect(account3).vote(0, "15000000000000000000", voteHash3)
      ).to.be.revertedWith("You have already voted!");
      console.log("Done!");

      console.log("Can't reveal....");
      await expect(
        Voting.connect(account2).revealVote(0, false, "Qwertyu*")
      ).to.be.revertedWith("Voting time is not over yet!");
      console.log("Done!");

      console.log("Waiting end of voting.....");
      await new Promise((resolve) => setTimeout(resolve, 3000));

      console.log("Too early for withdrawals");
      await expect(
        Manager.connect(account2).withdrawRewards(0, "Qwertyu*", false)
      ).to.be.revertedWith(
        "You can view the information only after the end of the voting!"
      );

      console.log("Can' vote anymore....");
      await expect(
        Voting.vote(0, "100000000000000000000", voteHash2)
      ).to.be.revertedWith("Time to vote is up!");
      console.log("Done!");

      console.log("Time to reveal....");
      await expect(
        Voting.connect(account2).revealVote(0, false, "Qwertyu*123")
      ).to.be.revertedWith("The entered data does not match!");
      const txReveal1 = await Voting.connect(account2).revealVote(
        0,
        false,
        "Qwertyu*"
      );
      await txReveal1.wait();
      await expect(
        Voting.connect(account2).revealVote(0, false, "Qwertyu*")
      ).to.be.revertedWith("You have already reveal!");
      const txReveal2 = await Voting.connect(account3).revealVote(
        0,
        true,
        "Qwertyu*"
      );
      await txReveal2.wait();
      console.log("Done");

      console.log("Waiting end of reveal.....");
      await new Promise((resolve) => setTimeout(resolve, 5000));

      console.log("Close voting...");
      const txCloseVote = await Voting.endOfVoting(0);
      await txCloseVote.wait();
      console.log("Done");

      console.log("Checking the correctness of the voting information...");
      let [, , , endVoteTime, endRevealTime] = await Voting.votingArchiveInfo(
        0
      );
      expect(await Voting.votingArchiveInfo(0)).to.deep.equal([
        account1.address,
        "25",
        "20",
        endVoteTime,
        endRevealTime,
        false,
      ]);
      console.log("Correct!");

      console.log("Can't open voting without funds...");
      await expect(
        Voting.connect(account2).openVoting(
          1,
          "QmSKUXj218ZPvcNTb2teqpUXyx11eFP6WahYVaFTkns3g1",
          voteHash1
        )
      ).to.be.revertedWith("You don't have enough funds to open voting!");
      console.log("Done!");

      console.log("Check that raiting was changed...");
      expect(await Manager.fakeHuntersInfo(account1.address)).to.deep.equal([
        true,
        102,
      ]);
      console.log("Correct!");

      console.log("Check that info about voting is correct...");
      expect(
        await Manager.participationInVotingInfo(account1.address, 0)
      ).to.deep.equal([
        "100000000000000000000",
        "110000000000000000000",
        voteHash1,
        false,
      ]);
      expect(
        await Manager.participationInVotingInfo(account2.address, 0)
      ).to.deep.equal([
        "200000000000000000000",
        "210000000000000000000",
        voteHash2,
        false,
      ]);
      expect(
        await Manager.participationInVotingInfo(account3.address, 0)
      ).to.deep.equal([
        "150000000000000000000",
        "157500000000000000000",
        voteHash3,
        false,
      ]);
      console.log("Correct!");

      console.log("Withdraw rewards...");
      expect(await Manager.depositInfo(account1.address)).to.equal(
        "100000000000000000000"
      );
      expect(await Manager.depositInfo(account2.address)).to.equal("0");
      expect(await Manager.depositInfo(account3.address)).to.equal(
        "50000000000000000000"
      );
      const txWithdrawReward1 = await Manager.connect(account1).withdrawRewards(
        0,
        "Qwertyu*",
        true
      );
      await txWithdrawReward1.wait();
      await expect(
        Manager.connect(account2).withdrawRewards(0, "Qwertyu*123", false)
      ).to.be.revertedWith("The entered data does not match!");
      const txWithdrawReward2 = await Manager.connect(account2).withdrawRewards(
        0,
        "Qwertyu*",
        false
      );
      await txWithdrawReward2.wait();
      const txWithdrawReward3 = await Manager.connect(account3).withdrawRewards(
        0,
        "Qwertyu*",
        true
      );
      await txWithdrawReward3.wait();
      await expect(
        Manager.connect(account2).withdrawRewards(0, "Qwertyu*", false)
      ).to.be.revertedWith("The reward has already been paid!");
      expect(await Manager.depositInfo(account1.address)).to.equal(
        "210000000000000000000"
      );
      expect(await Manager.depositInfo(account2.address)).to.equal(
        "200000000000000000000"
      );
      expect(await Manager.depositInfo(account3.address)).to.equal(
        "207500000000000000000"
      );
      expect(
        await Manager.participationInVotingInfo(account1.address, 0)
      ).to.deep.equal(["0", "0", voteHash1, true]);
      expect(
        await Manager.participationInVotingInfo(account2.address, 0)
      ).to.deep.equal(["0", "0", voteHash2, true]);
      expect(
        await Manager.participationInVotingInfo(account3.address, 0)
      ).to.deep.equal(["0", "0", voteHash3, true]);
      console.log("Done!");

      console.log("Withdraw funds from contract....");
      const txWithdraw1 = await Manager.withdraw("200000000000000000000");
      await txWithdraw1.wait();
      const txWithdraw2 = await Manager.connect(account1).withdraw(
        "210000000000000000000"
      );
      await txWithdraw2.wait();
      const txWithdraw3 = await Manager.connect(account2).withdraw(
        "200000000000000000000"
      );
      await txWithdraw3.wait();
      const txWithdraw4 = await Manager.connect(account3).withdraw(
        "207500000000000000000"
      );
      await txWithdraw4.wait();
      expect(await Token.balanceOf(account1.address)).to.deep.equal(
        "510000000000000000000"
      );
      expect(await Token.balanceOf(account2.address)).to.deep.equal(
        "500000000000000000000"
      );
      expect(await Token.balanceOf(account3.address)).to.deep.equal(
        "507500000000000000000"
      );
      expect(await Token.balanceOf(Manager.address)).to.deep.equal("0");
      console.log("Done!");
      /*---------------------------------------------------------------*/
    });
  });
});
