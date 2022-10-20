pragma solidity >=0.8.0 <0.9.0;

contract Revert{
    uint public minPrice=10000;
    mapping (address=>uint) public orderList;
    function order() external payable{
        if (msg.value < minPrice){

        }else{
            revert("Msg.value must not be zero");//error 발생, state롤백
        }
        
    }
}