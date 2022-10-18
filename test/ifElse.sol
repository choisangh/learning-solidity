pragma solidity >=0.8.0 <0.9.0;
contract IfElse{

    uint public mininalPrice = 1000;
    uint public maxPrice = 1000000;

    mapping (int=>address) public owner;
    function conditional(uint ask_price) public {
        if(ask_price > mininalPrice){
            owner[1] = 0x8e27f274FA90B0b116b001626150d87C94993964;
        }else{
            //fail
            //revert(); ==> 실패처리
        }

    }

    function conditional2(uint ask_price) public{
        if(ask_price > mininalPrice){
            owner[1] = 0x8e27f274FA90B0b116b001626150d87C94993964;
        } else if  (ask_price > maxPrice){
            revert();
        } else{
            revert();
        }
    }
}