pragma solidity >=0.8.0 <0.9.0;

contract Mapping{
    //ERC20 잔액 관리
    mapping(address => int) public balance;
    // key - value
    // key 값 중복X
    balance["0x8e27f274FA90B0b116b001626150d87C94993964"] = 1000;
    uint public myBalance = balance["0x8e27f274FA90B0b116b001626150d87C94993964"];

}