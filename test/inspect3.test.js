const { ethers } = require("hardhat");
const { expect } = require("chai");
const { keccak256 } = require("ethers/lib/utils");

let address1;
let inspect3Contract;
let provider = ethers.provider;

before(async () => {
  address1 = await ethers.getSigner();
  const InspectContractFactory = await ethers.getContractFactory("Inspect3");
  inspect3Contract = await InspectContractFactory.deploy();
});

describe("inspecting local variable", () => {
  it("should return the address in storage slot 0", async () => {
    await inspect3Contract.setAddress(address1.address);
    const slot0 = await provider.getStorageAt(inspect3Contract.address, 0);
    expect(ethers.utils.getAddress("0x" + slot0.slice(26))).to.equal(
      address1.address
    );
  });
  it("should return the number local variable", async () => {
    await inspect3Contract.setNumber(555555);
    const slot0 = await provider.getStorageAt(inspect3Contract.address, 0);

    const nb = slot0.slice(0, 26);
    expect(parseInt(nb, 16)).to.equal(555555);
  });

  it("should return bytes32 local variable", async () => {
    const hash = ethers.utils.solidityKeccak256(["string"], ["solidity"]);
    await inspect3Contract.setBytes32(hash);
    const slot1 = await provider.getStorageAt(inspect3Contract.address, 1);
    expect(slot1).to.equal(hash);
  });
});
