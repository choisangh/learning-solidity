pragma solidity >=0.8.0 <0.9.0;

contract Require{
    uint public minPrice=10000;
    mapping (address=>uint) public orderList;
    function order() external payable{
        require(msg.value !=0, "Msg.value must not be zero"); //조건문 체크 & 에러문

        if(msg.value !=0){
            orderList[msg.sender] = msg.value;
        }else{
            revert("Msg.value must not be zero");
        }
    }
}