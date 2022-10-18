pragma solidity >=0.8.0 <0.9.0;


contract Loop{
    function forLoop() public{
        uint8 sum = 0;
        for(uint8 i=1; i < 11; i++){
            sum += i;
        }
    }

    function whileLoop() public{
        uint8 sum=0;
        uint8 i=1;
        while(i<11){
            sum += i ;
            i++;
        }

    }
    function doWhileLoop() public{
        uint8 sum = 0;
        uint8 i = 1;
        do{
            sum += 1;
            i++;
        }while(i<11);
    }

    function loopbreak() public{
        uint8 sum = 0;
        for(uint8 i=1; i < 11; i++){
            sum += 1 ;
            if (sum>10){
                break;
            }
        }
    }



    function loopcontinue() public{
        uint8 sum = 0;
        for(uint8 i=1; i < 11; i++){
            if (i == 5){
                continue; //밑에 줄 생략략
            }
            sum += 1; 
        }
    }




}