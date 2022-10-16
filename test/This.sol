pragma solidity >=0.8.0 <0.9.0;

contract This{
    uint public data = 10;
    function getBalance() public view returns(uint){
        return address(this).balance; //this = contract 자기 자신
    }

    function externalFunc() external { //외부에서만 호출가능
        data = 15;
    }

    function internalFunc() internal {
        this.externalFunc(); // this 사용시 내부에서 호출 가능
    }
}