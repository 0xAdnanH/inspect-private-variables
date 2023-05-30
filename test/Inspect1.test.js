const { ethers } = require("hardhat");
const { expect } = require("chai");

let address1;
let inspect1Contract;
let provider = ethers.provider;

before(async () => {
  address1 = await ethers.getSigner();
  const InspectContractFactory = await ethers.getContractFactory("Inspect1");
  inspect1Contract = await InspectContractFactory.deploy();
});

describe("inspecting local variable", () => {
  it("should return the address in storage slot 0", async () => {
    await inspect1Contract.setAddress(address1.address);
    const slot0 = await provider.getStorageAt(inspect1Contract.address, 0);
    expect(ethers.utils.getAddress("0x" + slot0.slice(26))).to.equal(
      address1.address
    );
  });
});
