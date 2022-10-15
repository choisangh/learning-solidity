pragma solidity >=0.8.0 <0.9.0;

contract PureView{

    uint8  private data = 255; //전역변수 선언 시 storage에 저장(블록체인 영구 저장)


    function getData() public view returns(uint8){ //state값 조회하는 경우 view
        return data;
    }
    function getPureData() public pure returns(uint8){ //state값을 조회하지 않은 경우 pure
        uint8  temp_data = 9; //지역변수 선언 시 memory에 저장(휘발)
        return temp_data;
    }


}