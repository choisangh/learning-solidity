pragma solidity >=0.8.0 <0.9.0;

error ZeroCustomError();

contract Require{
    uint public minPrice=10000;
    mapping (address=>uint) public orderList;
    function order() external payable{

        if (msg.value < minPrice){
            revert ZeroCustomError();
        }
        orderList[msg.sender] = msg.value;
         
    }
}