pragma solidity >=0.8.0 <0.9.0;

contract transactionProperty2{

    mapping(address=>uint) private orderList;
    function newOrderList() external payable{
        orderList[msg.sender] = msg.value; //사용자 주문 정보
    }

    bytes4 private checkFunction;


    function newCheckFunction(address sender, uint price) external returns(bool){
        bytes4 selector = bytes4(keccak256("newOrderList()"));

        if(selector == msg.sig){
            return true;
        }
    }

}