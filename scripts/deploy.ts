import { ethers } from "hardhat";

async function main() {
  const [owner, acct1,acct2,acct3] = await ethers.getSigners()
  const randomgenerator=await ethers.getContractFactory("VRFv2Consumer")
  const randomdeploy=await randomgenerator.deploy("10151")
  await randomdeploy.deployed()
  const contractaddress=randomdeploy.address
  console.log(`Contract has been deployed to ${contractaddress}`)
 }

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main().catch((error) => {
  console.error(error);
  process.exitCode = 1;
});
