pragma solidity ^0.4.23;

contract MyContract{
    uint count;
    //default 는 internal

    constructor() public {

    }

    function numOfStudents(address _teacher) public view returns(uint) {
        test();
    }

    function test() external{

    }
}

contract YourContract is MyContract{
    //YourContract 가 MyContract를 상속받음
    //~~. 의 접근제어자 없이 바로 사용가능 
    function callTest() public {
        test();
    }
}