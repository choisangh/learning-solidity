//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Car{
    string private type_;
    uint8 private door;
    uint private price;
    constructor(string memory _type, uint8 _door, uint _price){
        type_ = _type;
        door = _door;
        price = _price;
    }
    function getDoor() public view returns(uint8){
        return door;
    }
    function getPrice() public view virtual returns(uint){ //virtual 키워드
        return price;
    }
}


contract Benz is Car("suv", 4, 10000){ //상속은 is로
    string private model;
    address private owner;
    uint private premium;
    constructor(string memory _model, uint _premium){
        model = _model;
        owner = msg.sender;
        premium = _premium;
    }
    function getModel() public view returns(string memory){
        return model;
    }
    function getPrice() public view override returns(uint){ //override 키워드
        return premium;
    }
}
