// SPDX-License-Identifier: MIT

/*
    This contract recevives funding from different accounts. Only the contract owner can withdraw these funds.
*/

pragma solidity 0.6.0;

contract FundProjectForOwner {
    address public owner;

    mapping(address => uint256) public addressToAmountFunded;

    address[] public funders;

    constructor() public {
        owner = msg.sender;
    }

    modifier onlyOwner() {
        require(msg.sender == owner, "You are not the owner of this contract!");
        _;
    }

    function fund() public payable {
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
    }

    function withdraw() public payable onlyOwner {
        msg.sender.transfer(address(this).balance);

        for (
            uint256 funderIndex = 0;
            funderIndex < funders.length;
            funderIndex++
        ) {
            address funder = funders[funderIndex];
            addressToAmountFunded[funder] = 0;
        }

        funders = new address[](0);
    }
}
