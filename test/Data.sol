pragma solidity >=0.8.0 <0.9.0;

contract DataType{ 
    //자료형 기본

    bool public data1 = true; //false
    int public data2 = -10;
    uint public data3 = 10; //양수값만 사용

    uint256 public data4 = 100000000000; //0~2^256 -1
    int256 public data5 = -10000000000000000000; //큰 메모리 사용시 -2^255 ~ 2^255 -1 

    uint8 public data6 = 100; //작은 메모리 사용시 -> 가스값 낭비 0~2^8 - 1 =255
    int8 public data7 = -100; // - 128 ~ 127

    string public data8 = "choisangh";
    bytes public data9 = "choisangh";
    bytes20 public data10 = hex"8e27f274fa90b0b116b001626150d87c94993964";//주소값
    bytes32 public data11 = hex"0f1c5a35d40d2831c63e41f83d0174dd0ccf294beacceb6f39bed260f7ecbe50";//트랜잭션 해쉬값

    address public data12 = 0x30AE003d9c29Cd9D403F84312744B0f1abcae95c;
}