pragma solidity >=0.8.0 <0.9.0;


contract Operation{
    uint public intData;
    string public stringData;

    function math() public{
        intData = intData + 1;
        intData += 1;
        intData++;

        intData = intData - 1;
        intData = intData / 1;
        intData = intData * 1;
    }

    function weiToEth() public{ //화폐데이터 처리
        uint wei_data = 1 wei; //wei = 이더리움에서 가장 작은 화폐단위

        uint eth_data = wei_data * (10**18); // 1000000000000000000 // 1 eth

        uint gwei_data = wei_data * (10**9);

    }
    function logical() public{
        bool true_data = true;
        bool false_data = false;

        if(true_data){

        }else{

        }
        //if(true_data && false_data) //false
        //if(true_data || false_data) //true
        //if(true_data == false_data) // false
        // >, <, >=, <=
    }


}