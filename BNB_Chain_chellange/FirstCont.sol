// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;

contract FirstContract {
    int private number = 1000;
    uint public uNumber = 100;
    string private name = "Tom";
    bool public isLoading = true;

    function callNumber() public view returns(int){
        return number;
    }

    function addOne() public{
        number = number + 1;
    }
    function addx(int _addNum) public {
        number = number + _addNum;
    }
}