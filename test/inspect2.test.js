const { ethers } = require("hardhat");
const { expect } = require("chai");

let address1;
let inspect2Contract;
let provider = ethers.provider;

before(async () => {
  address1 = await ethers.getSigner();
  const InspectContractFactory = await ethers.getContractFactory("Inspect2");
  inspect2Contract = await InspectContractFactory.deploy();
});

describe("inspecting local variable", () => {
  it("should return the address in storage slot 0", async () => {
    await inspect2Contract.setAddress(address1.address);
    const slot0 = await provider.getStorageAt(inspect2Contract.address, 0);
    expect(ethers.utils.getAddress("0x" + slot0.slice(26))).to.equal(
      address1.address
    );
  });
  it("should return the number local variable", async () => {
    await inspect2Contract.setNumber(555555);
    const slot0 = await provider.getStorageAt(inspect2Contract.address, 0);

    const nb = slot0.slice(0, 26);
    expect(parseInt(nb, 16)).to.equal(555555);
  });
});
