//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract CheckContarct{ //이더리움 전송의 3가지 방법
    
    event Transfer();
    function isContract(address _addr) private returns (bool isContract){
        uint32 size;
        assembly{
            size := extcodesize(_addr)
        }
        return (size > 0); // 0보다 크면 컨트랙트(CA) 0보다 작으면 계좌(EOA)
    }
    //transfer, send, call
    //address(to).transfer, address(to).send, address(to).call

    function sendTranfer(address payable to) public payable{
        to.transfer(msg.value);
    }
    function sendSend(address payable to) public payable{
        bool result = to.send(msg.value); //transfer와 send의 차이 -> 성공/실패 여부 return
        if(result == true){
            emit Transfer();
        }else{
            revert();
        }
    }
    function call(address payable to) public payable{ //외부 함수 호출, 이더리움 전송
        (bool result, bytes memory data) = to.call{value:msg.value}("");
        if(result == true){
            emit Transfer();
        }else{
            revert();
        }
    }
}