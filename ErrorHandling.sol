// SPDX-License-Identifier: MIT

pragma solidity 0.8.18;

contract ProductIDChecker {
    // This program will check if a given product ID is valid or not
    // Product ID range is 1-99
    uint public productCount = 0;

    // Function to assert product ID is in valid range
    function assertProductID(uint productID) public pure {
        assert(productID >= 1 && productID <= 99);
    }

    // Function to increment product count if ID is valid using revert
    function addProduct(uint productID) public returns (uint) {
        if (productID < 1 || productID > 99) {
            revert("This is not a valid product ID");
        }
        productCount += 1;
        return productCount;
    }

    // Function to check product ID is within the valid range using require
    function isValidProductID(uint productID) public pure returns (bool) {
        require(productID >= 1 && productID <= 99, "Product ID range should be between 1-99");
        return true;
    }

    // Combined function to add product with require, assert, and revert
    function addProductWithChecks(uint productID) public returns (uint) {
        require(productID >= 1 && productID <= 99, "Product ID range should be between 1-99");
        
        // Assert to double-check the product ID is valid
        assert(productID >= 1 && productID <= 99);
        
        // Use revert if product ID is not valid after assert (though this will typically not be reached due to assert)
        if (productID < 1 || productID > 99) {
            revert("This is not a valid product ID");
        }

        productCount += 1;
        return productCount;
    }
}
