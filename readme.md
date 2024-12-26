# Carbon Footprint Tracker

This project is a **Carbon Footprint Tracker** that interacts with an Ethereum smart contract to allow users to log, retrieve, and track carbon emissions. It consists of:

1. A **Solidity Smart Contract** deployed on Ethereum-compatible blockchains.
2. A simple **HTML, CSS, and JavaScript frontend** that interacts with the contract using **Web3.js**.

## Features
- **Log Emissions**: Users can input emission amounts (in kilograms) and a short description of the source.
- **View Total Emissions**: Users can retrieve their cumulative carbon emissions.
- **Fetch Emission Logs**: Retrieve and display all recorded emission entries, including timestamps.

## Prerequisites
- **MetaMask**: A browser wallet to interact with the Ethereum blockchain.
- **Node.js** (optional for local hosting).
- A deployed version of the Solidity contract on a testnet/mainnet.

## Project Setup

### Smart Contract Deployment
1. Open [Remix IDE](https://remix.ethereum.org/).
2. Deploy the `CarbonFootprintTracker` contract provided in the Solidity code.
3. Copy the **contract address** after deployment.
4. Replace `<YOUR_CONTRACT_ADDRESS>` in the `contractAddress` variable within the frontend JavaScript.
5. Update the ABI in the `contractABI` variable.

### Frontend Setup
1. Download the project files (`index.html`).
2. Open the file in a browser.
3. Ensure MetaMask is installed and connected to the same network as the deployed contract.

## How to Use
1. **Log Emissions**:
   - Enter the emission amount (kg) and a description.
   - Click "Log Emission" to record the data on the blockchain.

2. **View Total Emissions**:
   - Click "Get Total Emissions" to view the cumulative emissions recorded.

3. **Fetch Emission Logs**:
   - Click "Get Emission Entries" to retrieve and display all recorded emission logs.

## Project Files
- `index.html`: Frontend code using HTML, CSS, and JavaScript (Web3.js).
- Solidity Smart Contract: Deployable on Remix IDE.

## Technologies Used
- **Solidity**: Smart contract development.
- **Web3.js**: Blockchain interaction in the frontend.
- **HTML/CSS/JavaScript**: Frontend user interface.
- **MetaMask**: Wallet for blockchain transactions.

## Example Workflow
1. Deploy the contract and replace the required details in the frontend.
2. Log emissions: Example "100 kg from car travel."
3. Fetch total emissions and verify the entries.

## Notes
- Ensure you are connected to the correct blockchain network in MetaMask.
- Gas fees may apply when interacting with the contract on testnet/mainnet.

## Future Improvements
- Add authentication for users.
- Allow exporting emission logs.
- Integrate real-world APIs for emission calculations.

---
### License
This project is open-source and licensed under the MIT License
