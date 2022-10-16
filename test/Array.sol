pragma solidity >=0.8.0 <0.9.0;

contract Array{
    //[1,2,3,4] 리스트 형태 데이터
    int[] public intList = [1,2,3,4]; //공간 가변
    int[3] public int3List=[1,2,3]; //공간 불변 = 3index

    //[1,2,3,4] -> [1,2,3,4,5]
    intList.push(5);
    int public lastData = intList.pop(); //5 -> [1,2,3,4]
    int public secondData = intList[1]; //해당 인덱스 값 호출
    delete intList[1]; // [1,0,3,4] 배열 요소 초기화(0)

    struct Product{
        string name;
        uint price;
    }
    product[] public productList; //객체 리스트
    productList.push(mainProduct); //리스트 요소 푸쉬
}