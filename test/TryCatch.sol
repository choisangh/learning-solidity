pragma solidity >=0.8.0 <0.9.0;

contract Math{
    function plusData(uint a, uint b) external returns(uint){
        return a+b;
    }
}

contract TryCatch{
    Math math = new Math();
    address payable public temp_address = payable(0x30AE003d9c29Cd9D403F84312744B0f1abcae95c);
    function callOtherContract(address to) external payable{
        try math.plusData(6,4) returns(uint result){
            (temp_address).transfer(result);
        }catch{
            revert();
        }
    }
}