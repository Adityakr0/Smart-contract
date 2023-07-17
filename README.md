Solidity Contract Readme
📄 Checks.sol - A Simple Solidity Contract for Error Handling

This is a simple Solidity contract that demonstrates error handling in Solidity using the assert, revert, and require statements.

Contract Overview
The Checks contract includes the following functionality:

A public variable limit that represents the maximum amount of Ether that can be transferred.
A getBalance function that retrieves the Ether balance of a given address.
An error definition called singleTransferLimit to handle a specific error condition.
A transfer function that allows transferring Ether to a specified receiver address.
Error Handling
require()
The require() statement is used to validate certain conditions before further execution of a function.

Example:

require(<condition to be validated>, <message to be displayed if the condition fails>);
assert()
The assert() statement is similar to require() and checks for conditions. If a condition fails, the function execution is terminated with an error message.

Example:

assert(<condition to be checked/validated>);
revert()
The revert() statement can be used to flag an error and revert the current call. It can also include a message providing details about the error, which will be passed back to the caller.

Using the Contract in Remix IDE
To use this contract in the Remix IDE, follow these steps:

Open the Remix IDE (https://remix.ethereum.org/).
Create a new Solidity file and name it "Checks.sol".
Copy and paste the contract code into the "Checks.sol" file.
Select the appropriate Solidity compiler version (0.8.0 or higher) in the Remix IDE.
Compile the contract by clicking the "Compile" button.
Once compiled successfully, you can interact with the contract using the Remix IDE's built-in console or by deploying it to a test network.
Note: Before interacting with the contract, make sure you have a compatible Ethereum wallet connected to the Remix IDE (e.g., MetaMask).

Contract Functionality
getBalance(address _address)
The getBalance function allows you to retrieve the Ether balance of a given address. It takes an address as input and returns the balance as a uint256 value.

Example usage:

uint256 balance = contractInstance.getBalance(address);
transfer(address payable _receiver)
The transfer function enables transferring Ether to a specified receiver address. It requires a minimum value of 1 Ether to be sent. If the transfer amount exceeds the limit value (set to 10 Ether), the function reverts with an error message.

Example usage:

contractInstance.transfer{value: 1 ether}(receiverAddress);
Remember to replace contractInstance with the deployed instance of the contract and receiverAddress with the desired Ethereum address.

🌟 Acknowledgement 🌟
This project was built under the guidance of the Metacrafters team as part of their comprehensive Avalanche course. I express my gratitude to the MetaCrafters team for their support and guidance throughout this learning journey.
