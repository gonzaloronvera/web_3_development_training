// SPDX-License-Identifier: MIT

/*
    This contract recevives funding from different accounts. Anyone can withdraw the funds.
*/

pragma solidity 0.6.0;

contract FundProject {
    mapping(address => uint256) public addressToAmountFunded;

    address[] public funders;

    function fund() public payable {
        addressToAmountFunded[msg.sender] += msg.value;
        funders.push(msg.sender);
    }

    function withdraw() public payable {
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
