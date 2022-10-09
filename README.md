# Web3 Development Workshop

## 1. Setup your Wallet

1. There are two options for wallets, please check with your instructor which one to download;
- [Metamask extension for Chrome](https://metamask.io/)
- [Brave Browser](https://brave.com/)

2. Install the wallet application and follow the prompts to create your first wallet. 
- ❗️ **Make sure to set up your password and save your backup/seed phrase.**

3. Copy your wallet address and view it on [Etherscan](https://goerli.etherscan.io/).
- Hint: enter you address in the search bar on Etherscan. You should see your account with a zero balance and no transactions.

4. (optional) Find the private key for your account.


## 2. Interacting with the Ethereum blockchain

There are a few common tools we'll be using to complete the workshop;

1. **Goerli Testnet:**
   The Goerli testnet is an Ethereum testnet. A testnet (test network) is a network that is near-identical to the mainnet (main network) that we can use for learning and testing purposes. The key difference between a testnet and a mainnet is that a testnet doesn't involve the use of real funds, so we can experiment freely without the risk of incurring large costs.
   
   > ❗️ Throughout this workshop we'll be using the Goerli network. If you ever find yourself wondering why you can't see the result of a transaction, or are looking at a blank page, or even just getting an odd error - the first thing to check is that your tools are using the Goerli network.

2. **Etherscan:** 
   Etherscan is a *block explorer* which allows us to query the blockchain. We can use it to query the state of the blockchain, for example, we can see the balance of an account or the transactions an account is a party to, we can view smart contracts, see who owns a particular asset, and much more. 
      - In this workshop we'll be using [Goerli Etherscan](https://goerli.etherscan.io/).

3. **Unit Conversion:**
   Ethereum uses a few different units when talking about currency. To avoid any confusion, this [Ether Converter](https://eth-converter.com/) is a handy tool you can use to convert between the various units.

4. **Gas Fees:**
   When we deploy and interact with smart contracts we have to pay gas fees. In this workshop you shouldn't have any issue with gas fees, as the tools used will automatically calculate the fees for you. If you're interested in seeing what the current fees for the network are, then check out the [Gas Station](https://ethgasstation.info/) tool. *(Note: Gas Station shows the fees for the Ethereum mainnet)*

5. **Faucets:**
   To experiment on a testnet we need a wallet with funds. Faucets are services that will send a small amount of funds to your wallet to get you started. (Faucets only exist on testnets - for obvious reason!)
   - We've created [The Very Cool Goerli Faucet](https://faucet.awsmyers.people.aws.dev/) that you can use to request test funds. Once you've submitted your request, please allow a few minutes for the transaction to clear (although typically this will happen in less than a minute). Once the transaction has cleared you will see your account on screen with a non-zero balance.
   - Alternately, you could use [this public faucet](https://goerlifaucet.com/)
   - Once the transaction has cleared head over to [Goerli EtherScan](https://goerli.etherscan.io/) and search for your wallet address. Take note that you can see the balance of your account and also the transaction that the sent funds.
   - (optional) Transfer ETH with the people sitting next to you.

6. **Ethereum Development Environment:**
   There are a whole host of mature development tools available to smart contract developers. For this workshop we'll be using the browser-based IDE (integrated development environment) [Remix](https://remix.ethereum.org/).

   > ❗️  The instructor will give you an overview of Remix and how to use it. If you run into issues during the rest of the workshop, one of the most common issues is having the wrong network selected. Make sure your wallet application is using the **Goerli** network, and Remix is configured to use **Injected Provider - Metamask** as the Environment (under *Deploy and Run Transactions*). Don't worry if you run into this issue; make sure to ask for help!


## 3. Creating your first smart contract

- Create a contract to store a value in Rinkenby [1_StoreValue.sol](https://raw.githubusercontent.com/gonzaloronvera/web_3_development_training/main/1_StoreValue.sol) contract. 
- Publish source code and validate your contract in [Goerli EtherScan](https://goerli.etherscan.io/). 
- Create a contract to store more complex information [2_StoreValueForPeople.sol](https://raw.githubusercontent.com/gonzaloronvera/web_3_development_training/main/2_StoreValueForPeople.sol).

## 4. Creating a smart contract that holds crypto

- Write a contract to get and withdraw funding [3_FundProject.sol](https://raw.githubusercontent.com/gonzaloronvera/web_3_development_training/main/3_FundProject.sol).
- Modify the contract to respect the contract owner [4_FundProjectForOwner.sol](https://raw.githubusercontent.com/gonzaloronvera/web_3_development_training/main/4_FundProjectForOwner.sol).

## 5. Creating your first token

- Write a smart contract to create a [ERC20](https://ethereum.org/en/developers/docs/standards/tokens/erc-20/) token [5_MyToken.sol](https://raw.githubusercontent.com/gonzaloronvera/web_3_development_training/main/5_MyToken.sol).
- Add the token to your wallet.
