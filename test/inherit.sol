//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Car{
    string private type_;
    uint8 private door;

    function getDoor() public view returns(uint8){
        return door;
    }
}


contract Benz is Car{ //상속은 is로
    string private model;
    address private owner;

    function getModel() public view returns(string memory){
        return model;
    }
}

contract Audi is Car{
    string private model;
    address private owner;

    function getModel() public view returns(string memory){
        return model;
    }
}