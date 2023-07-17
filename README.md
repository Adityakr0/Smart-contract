# ⚡ Solidity Contract: Checks.sol

📄 **Checks.sol** - A Simple Solidity Contract for Error Handling

This is a simple Solidity contract that demonstrates error handling in Solidity using the `assert`, `revert`, and `require` statements.

## 🔍 Contract Overview

The Checks contract includes the following functionality:

- 📌 **limit**: A public variable that represents the maximum amount of Ether that can be transferred.
- 📌 **getBalance**: A function that retrieves the Ether balance of a given address.
- 📌 **singleTransferLimit**: An error definition used to handle a specific error condition.
- 📌 **transfer**: A function that allows transferring Ether to a specified receiver address.

## ❗ Error Handling

The contract utilizes three error handling mechanisms:

1. ✅ **require()**: The `require()` statement is used to validate certain conditions before further execution of a function. If the condition fails, the function execution is halted, and an error message is displayed.

2. ✅ **assert()**: The `assert()` statement checks for conditions. If a condition fails, the function execution is terminated with an error message. Unlike `require()`, `assert()` is not meant for handling user input errors but for checking internal contract state consistency.

3. ✅ **revert()**: The `revert()` statement can be used to flag an error and revert the current call. It can also include a message providing details about the error, which will be passed back to the caller.

## 🚀 Using the Contract in Remix IDE

To use this contract in the Remix IDE, follow these steps:

1. 🌐 Open the Remix IDE ([Remix IDE](https://remix.ethereum.org/)).
2. 🆕 Create a new Solidity file and name it "Checks.sol".
3. ⌨️ Copy and paste the contract code into the "Checks.sol" file.
4. ⚙️ Select the appropriate Solidity compiler version (0.8.0 or higher) in the Remix IDE.
5. 🛠️ Compile the contract by clicking the "Compile" button.
6. ▶️ Once compiled successfully, you can interact with the contract using the Remix IDE's built-in console or by deploying it to a test network.

ℹ️ Before interacting with the contract, make sure you have a compatible Ethereum wallet connected to the Remix IDE (e.g., MetaMask).

## 💡 Contract Functionality

🔍 **getBalance(address _address)**

The `getBalance` function allows you to retrieve the Ether balance of a given address. It takes an address as input and returns the balance as a `uint256` value.

Example usage:
```solidity
uint256 balance = contractInstance.getBalance(address);
