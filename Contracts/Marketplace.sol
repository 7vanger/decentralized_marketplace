// SPDX-License-Identifier: MIT
pragma solidity ^0.8.13;

contract Marketplace {
    uint public nextproductID;
    mapping(uint => string) public productName;

    function addProduct(string memory _Name) public{
        productName[nextproductID] = _Name;
        nextproductID++;
    }
    function getProduct(uint _valueID) public view returns (string memory){   
        string memory name = productName[_valueID];
        require(bytes(name).length > 0, "Product not found");
        return name;
    }

    function sellProduct(uint _valueID) public view returns (string memory){
        
    }
}
