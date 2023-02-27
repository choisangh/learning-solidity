//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Seller{
    address private seller;
    string private location;
    constructor(address _seller){
        seller = _seller;
    }
    function getSeller() public view returns(address){
        return seller;
    }
}

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
    function getPrice() public view virtual returns(uint){
        return price;
    }
}


contract Benz is Car("suv", 4, 10000), Seller(0x5B38Da6a701c568545dCfcB03FcB875f56beddC4){ // ,로 다중상속 가능
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
    function getPrice() public view override returns(uint){ 
        return premium;
    }
    function getCarPrice() public view returns(uint){ 
        return super.getPrice();
    }
}
