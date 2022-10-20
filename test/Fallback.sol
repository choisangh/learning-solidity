pragma solidity >=0.8.0 <0.9.0;

contract Fallback{
    uint public data =0;

    constructor(){
        data=5;
    }
    fuction order() external payable{

        data = 9;
    }

    fallback() payable external{ //사용자가 존재하지 않는 함수를 호출 할 때 //ERC20 토큰(100 토큰 전송 -> 100ETH)
        revert();
    }
    receive() payable external{ // 사용자가 ETH를 전송할 때, msg.data 비어있지 않는 경우
        revert();
    }
}