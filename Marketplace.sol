// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Marketplace {
    uint[] public productID;
    string[] public productName = ["nft1", "nf2", "nft3", "nft4", "nft5"];

    function productList(uint _valueID/*, string memory _valueName */) public view returns (string memory){   
        uint lengthid = productID.length;
        for (uint i = 0; i < lengthid; i++) {
            if (_valueID == productID[i]){
                return productName[i];
            }
        }
        revert("Product not found");
    }
}
