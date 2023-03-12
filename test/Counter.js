const { expect } = require("chai");
//const { ethers } = require("hardhat");

describe("Counter contract", function () {
  it("Deployment should assign the counter equal 11", async function () {
    //const [owner] = await ethers.getSigners();

    let start_num = 10;

    const Counter = await ethers.getContractFactory("Counter");

    const hardhatCounter = await Counter.deploy(start_num);

    await hardhatCounter.deployed();

    await hardhatCounter.count();

    expect(await hardhatCounter.counter()).to.equal(11);
  });
});