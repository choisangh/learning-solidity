pragma solidity >=0.8.0 <0.9.0;

contract transactionProperty{


    uint public msg1 = gasleft(); //가스 남은 양 확인
    bytes public msg2 = msg.data;//Transection input data 값 확인
    address public msg3 = msg.sender; //트랜잭션 요청자 계좌
    bytes4 public msg4 = msg.sig;//함수 호출한 값을 바이트코드로 바꾼 값
    uint public msg5 = msg.value;//메세지 밸류 = 전송한 eth 크기

    
    function checkValue() external payable{ //payable(항상 eth를 받을 수 있는 상태태) 키워드가 포함되어야만 msg.value 사용가능
        uint value = msg.value;
    }
}