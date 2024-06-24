// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract ErrorHandlingExample {
    uint public counter;

    // Function that uses require to validate input
    //This function takes an unsigned integer increment as input 
    //increases the counter by this value.
    function incrementCounter(uint increment) public {
        // Use require to ensure the increment is positive
        require(increment > 0, "Increment must be greater than zero");
        
        counter += increment;
    }

    // Function that uses revert to handle a specific error condition
    function decrementCounter(uint decrement) public {
        if (decrement > counter) {
            // Use revert with a custom error message if decrement is too large
            //revert is used to handle specific error conditions with custom error messages.
            revert("Decrement must not exceed the current counter value");
        }

        counter -= decrement;
    }

    // Function that uses assert to check an invariant
    function resetCounter() public {
        counter = 0;

        // Use assert to ensure the counter is reset to zero
        //assert is used to enforce invariants and conditions that should never fail.
        assert(counter == 0);
    }
}



