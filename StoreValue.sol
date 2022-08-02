// SPDX-Licence-Indentifier: MIT

/*
    This contract stores a value in the blockchain.
*/

pragma solidity 0.6.0;

contract StoreValue {
    uint256 myValue;

    function store(uint256 _myValue) public {
        myValue = _myValue;
    }

    function retrieve() public view returns (uint256) {
        return myValue;
    }
}
