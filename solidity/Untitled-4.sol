pragma solidity ^0.4.23;

contract MyContract{
    uint public count;
    //PUBLIC은 자동적으로 변수의 getter함수를 만들어준다. 

    constructor() public {

    }

    function numOfStudents(address _teacher) public view returns(uint) {
        test();
    }

    function test() public{

    }
}

contract YourContract is MyContract{
    //YourContract 가 MyContract를 상속받음
    //~~. 의 접근제어자 없이 바로 사용가능 
    function callTest() public {// DEFAULT : PUBLIC
        test();
    }
}

contract HisContract {
    MyContract myContract;

    function callTest() public {
        myContract.test();
    }
}