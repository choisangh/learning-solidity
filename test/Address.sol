pragma solidity >=0.8.0 <0.9.0;

contract Address{
    //address public failUser = ;
    //address 대소문자 구별 필요 checksum
    address public user = 0x8e27f274FA90B0b116b001626150d87C94993964;

    address payable public payable_user = payable(user); //입출금시 payable 타입만 가능

    function sendEth() public payable{ //입출금 기능시 payable 타입 명시
        payable_user.transfer(1000000000000000000);
    }
    
    function getBalance() public view returns(uint){
        return user.balance;
    }


}