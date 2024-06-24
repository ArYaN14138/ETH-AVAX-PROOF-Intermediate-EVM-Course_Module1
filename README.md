# ETH-AVAX-PROOF-Intermediate-EVM-Course_Module1
# ErrorHandlingExample Smart Contract
# Overview
The ErrorHandlingExample smart contract demonstrates basic error handling in Solidity using require, revert, and assert. The contract manages a simple counter that can be incremented, decremented, and reset, with appropriate error handling mechanisms for different scenarios.
 # Description
 The ErrorHandlingExample smart contract manages a counter with functions to increment, decrement, and reset it, utilizing require, revert, and assert for robust error handling. It ensures valid operations and enforces conditions to maintain correct counter behavior.
 # Features
 The ErrorHandlingExample smart contract includes the following features:

-Counter Management: Maintains a counter variable that can be incremented, decremented, and reset.

-Input Validation: Uses require to ensure that the increment value is positive, preventing invalid operations.

-Error Handling: Utilizes revert to handle specific error conditions when the decrement value exceeds the current counter, providing clear error messages.

-Invariant Enforcement: Applies assert to confirm that the counter is reset to zero, ensuring the internal state is as expected.

-Public Accessibility: Makes the counter variable publicly accessible, allowing users to view its current value at any time.

-Custom Error Messages: Provides specific and informative error messages for better debugging and user experience.

 # Functions
  # incrementCounter
function incrementCounter(uint increment) public;

This function increases the counter by the specified increment value. It uses the require statement to ensure that the increment is positive.

Parameters:

increment (uint): The value to increment the counter by. Must be greater than zero.

Errors:

Throws an error "Increment must be greater than zero" if the increment is not positive.

# decrementCounter
function decrementCounter(uint decrement) public;

This function decreases the counter by the specified decrement value. It uses the revert statement to handle the case where the decrement value is greater than the current counter value.

Parameters:

decrement (uint): The value to decrement the counter by. Must not exceed the current counter value.

Errors:

Throws an error "Decrement must not exceed the current counter value" if the decrement is greater than the current counter value.

# resetCounter
function resetCounter() public;

This function resets the counter to zero. It uses the assert statement to ensure that the counter is indeed reset to zero, enforcing an invariant that should never fail.

 # Error Handling Mechanisms
# require
The require statement is used to validate input and conditions. It reverts the transaction if the condition is not met, refunding the remaining gas. It's typically used for input validation.

# revert
The revert statement is used to handle specific error conditions with custom error messages. It explicitly reverts the transaction and can be used to provide more detailed error information.

# assert
The assert statement is used to check for conditions that should never be false, such as invariants within the contract. It is meant to catch serious errors and bugs. If an assert fails, it indicates a flaw in the contract's logic.

# Usage
# Increment the Counter:
Call incrementCounter with a positive value to increase the counter.
Example: incrementCounter(5) will increase the counter by 5.
# Decrement the Counter:
Call decrementCounter with a value that does not exceed the current counter value.
Example: If the counter is 10, decrementCounter(3) will decrease it to 7.
# Reset the Counter:
Call resetCounter to reset the counter to zero.
Example: resetCounter() will set the counter to 0 and ensure it using assert.

# Project by

- Aryan



 
