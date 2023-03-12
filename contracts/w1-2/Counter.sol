// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

//import "hardhat/console.sol";

contract Counter {

    //定义owner变量
    address owner;
    uint public counter;

    constructor(uint num) {
        //在部署合约的时候，将owner设置为部署者的地址
        owner = msg.sender;

        counter = num;
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function count() external onlyOwner{
        counter += 1;
        //console.log(counter);
    }

}
