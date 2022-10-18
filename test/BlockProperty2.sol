pragma solidity >=0.8.0 <0.9.0;

contract BlockPropertynew{
    // 랜덤값 만들기
    function generateRandom() public view returns(uint8){
        uint8 number = uint8(uint256(keccak256(abi.encodePacked(block.timestamp, block.difficulty)))%251);
        //keccak256 해싱
        //abi.encodePacked 해싱을 위한 바이트값 변환
        return number;
    }


}