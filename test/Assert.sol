pragma solidity >=0.8.0 <0.9.0;

contract Assert{
    uint public minPrice=10000;
    mapping (address=>uint) public orderList;
    function order() external payable{
        assert(msg.value != 0); //Error를 발생시키고 Transaction으로 인해 지금까지 변경된 state를 rollback //Require와 달리 에러문을 쓰지않고 조건문만 체크
        orderList[msg.sender] = msg.value;
    }
}