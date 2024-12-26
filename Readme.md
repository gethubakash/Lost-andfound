# Lost and Found DApp

A decentralized application (DApp) for reporting and tracking lost items using blockchain technology. Built with Solidity smart contracts and a modern web interface.

## 🌟 Features

- Report lost items with descriptions, locations, and contact information
- Track active lost items in real-time
- Mark items as found (only by the original reporter)
- MetaMask wallet integration
- Responsive and modern UI design
- Secure blockchain-based data storage

## 📋 Prerequisites

Before you begin, ensure you have the following installed:
- [MetaMask](https://metamask.io/) browser extension
- A web browser (Chrome, Firefox, or Brave recommended)
- [Node.js](https://nodejs.org/) and npm (for contract deployment)
- [Hardhat](https://hardhat.org/) or [Truffle](https://trufflesuite.com/) (for contract deployment)

## 🚀 Quick Start

1. Clone the repository:
```bash
git clone https://github.com/yourusername/lost-and-found-dapp.git
cd lost-and-found-dapp
```

2. Deploy the smart contract:
```bash
# Using Hardhat
npx hardhat compile
npx hardhat run scripts/deploy.js --network <your-network>
```

3. Update the contract address:
- Open `index.html`
- Replace `YOUR_CONTRACT_ADDRESS` with your deployed contract address

4. Open the application:
- Use a local server or directly open `index.html` in your browser
- Connect your MetaMask wallet
- Start reporting lost items!

## 🔧 Smart Contract Configuration

The smart contract is deployed on the Ethereum blockchain. Make sure to:
1. Deploy to your desired network (mainnet, testnet, or local network)
2. Update the ABI in `index.html` if you modify the contract
3. Have enough ETH in your wallet for gas fees

## 💻 Project Structure

```
lost-and-found-dapp/
├── contracts/
│   └── LostAndFound.sol     # Smart contract
├── index.html               # Main application file
└── README.md               # Project documentation
```

## 🎨 UI Features

- Gradient background with glass-morphism design
- Responsive layout for all device sizes
- Interactive animations and transitions
- Loading indicators for blockchain transactions
- Error handling and user feedback
- Clean and intuitive interface

## 🔒 Security Features

- Only the original reporter can mark items as found
- Secure MetaMask integration
- Transaction confirmation handling
- Error feedback for failed transactions
- Input validation and sanitization

## 🤝 Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/AmazingFeature`)
3. Commit your changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## 📝 Usage

1. Connect your MetaMask wallet
2. Fill out the form to report a lost item:
   - Description of the item
   - Last known location
   - Your contact information
3. Submit the form (requires transaction approval in MetaMask)
4. View your reported item in the Active Lost Items section
5. Mark items as found when recovered

## ⚠️ Important Notes

- Keep your MetaMask wallet secure
- Never share your private keys
- Transaction fees (gas) are required for reporting items and marking them as found
- All data is stored on the blockchain and is public

## 🌐 Network Support

The DApp supports the following networks:
- Ethereum Mainnet
- Goerli Testnet
- Sepolia Testnet
- Local development network

## 📱 Mobile Support

The application is fully responsive and works on:
- Desktop browsers
- Mobile browsers with MetaMask mobile
- Tablet devices

## 📄 License

This project is licensed under the MIT License - see the LICENSE file for details

## 👥 Contact

Your Name - [@yourtwitter](https://twitter.com/yourtwitter)
Project Link: [https://github.com/yourusername/lost-and-found-dapp](https://github.com/yourusername/lost-and-found-dapp)

## 🙏 Acknowledgments

- [Ethereum](https://ethereum.org/)
- [MetaMask](https://metamask.io/)
- [ethers.js](https://docs.ethers.io/)
- [Tailwind CSS](https://tailwindcss.com/)