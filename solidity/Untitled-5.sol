pragma solidity ^0.4.23;

contract MyContract{
    uint public count;
    //PUBLIC은 자동적으로 변수의 getter함수를 만들어준다. 

    constructor() public {

    }

    function numOfStudents(address _teacher) public view returns(uint) {
        test();
        //같은 컨트랙트 내에서만 부름 
    }


    function test() private{

    }
}

contract YourContract is MyContract{
    function callTest() public {// DEFAULT : PUBLIC
        //ERROR
        test();
    }
}

contract HisContract {
    MyContract myContract;

    function callTest() public {
        //ERROR
        myContract.test();
    }
}