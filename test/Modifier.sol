pragma solidity >=0.8.0 <0.9.0;
//에러 전 체크

contract Modifier{

    modifier checkMinPrice(){
        require(msg.value > minPrice); //modifier 선언 시 require문 중복 제거 가능
        _;
    }
    uint public minPrice=10000;
    mapping (address=>uint) public orderList;

    function test1() public payable checkMinPrice{
        //require(msg.value > minPrice);
        orderList[msg.sender]=msg.value;
    }
    function test2() public payable checkMinPrice{
        //require(msg.value > minPrice);
        orderList[msg.sender]=msg.value;
    }
}