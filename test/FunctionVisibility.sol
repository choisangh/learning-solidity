pragma solidity >=0.8.0 <0.9.0;

contract Function{
    uint8 private data = 255; // private(변수 외부 비공개), public(변수 외부 공개)
    uint8 public data2 = 255;


    function setData(uint8 _data) private{ //외부공개x, 상속된 contract x, 내부에서 o
        data = _data;
    }
    function setData2(uint8 _data) internal{ //외부공개x, 상속된 contract o, 내부에서 o
        data = _data;
    }
    function setData3(uint8 _data) public{ //외부공개o, 상속된 contract o, 내부에서 o
        data = _data;
    }
    function setData4(uint8 _data) external{ //외부공개o, 상속된 contract x, 내부에서 x
        data = _data;
    }


}