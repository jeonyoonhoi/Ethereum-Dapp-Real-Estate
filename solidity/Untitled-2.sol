pragma solidity ^0.4.23;

contract MyContract{
    //ERROR
    uint external count;
    //external 붙일 수 없다. 
    constructor() public {

    }

    function numOfStudents(address _teacher) public view returns(uint) {
        //ERROR
        test();
        //external 이 붙은 함수를 같은 컨트랙트에서 부를 수 없음
    }

    function test() external{

    }
}

contract YourContract {
    MyContract myContract;
    //myContranct 를 선언한뒤 

    function callTest() public {
        myContract.test();
        //외부 컨트랙트에서 호출 가능
    }
}