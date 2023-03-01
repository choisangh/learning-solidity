//SPDX-License-Identifier : MIT
pragma solidity >=0.8.0 <0.9.0;

contract Calculation{
    //delegate call은 call과 달리 해당 스마트컨트랙트의 함수를 가져와서 실행
    address public owner;
    uint public value;

    function plusData(uint a, uint b) external returns(uint){
        return a+b;
    }

    fallback() external payable{ //존재하지 않는 함수를 호출했을 경우
        owner = msg.sender;
        value = msg.value;
    }
}

contract Caller{
    function isContract(address _addr) private returns (bool isContract){
        uint32 size;
        assembly{
            size := extcodesize(_addr)
        }
        return (size > 0); 
    }
    function callFunc(address payable _address, uint _a, uint _b) public returns(bytes memory){
        bytes memory callFuncBytes = abi.encodeWithSignature("plusData(uint256,uint256)",_a,_b); //uint256 -> 완전한 타입으로 적어야함
        if (isContract(_address)){
            (bool result, bytes memory sum) = _address.delegatecall(callFuncBytes);
            return sum;
        }else{
            revert();
        }
    }
    function callNotExistFunc(address payable _address, uint _a, uint _b) public returns(bytes memory){
        bytes memory callFuncBytes = abi.encodeWithSignature("NotExistFunc(uint256,uint256)",_a,_b); //uint256 -> 완전한 타입으로 적어야함
        if (isContract(_address)){
            (bool result, bytes memory sum) = _address.delegatecall(callFuncBytes);
            return sum;
        }else{
            revert();
        }
    }
}