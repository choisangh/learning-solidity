pragma solidity >=0.8.0 <0.9.0;

contract Function{
    uint8 private data = 255;

    function setData(uint8 _data) public{ //state값 변경하는 경우 -> 트랜잭션 발생(검증)
        data = _data;
    }

    function getData() public view returns(uint8){ //state값 변경X(조회) -> 트랙잭션 미발생
        return data;
    }

}