contract MyContract {
    struct Student {
        string studentName;
        string gender;
        uint age;
    }

    mapping(uinnt256 => Student) studetInfo ;

    function setStuddentInfo(uint _studenntId,string _name, string _gender, uint _age) public {
        Student storage student = studentInfo[_studenId]];
        // 키 값으로 매개변수로 받은 _studentId(예 : 1234) 입력
        // 1234 키 값만의 특정 Student 구조체 정보를 불러온다. 

        student.studentName = _name;
        student.gender = _gender;
        studnet.age = _age;
        // 각각 필드에 매개변수로 받은 자료형을 대입 
    }

    function getStudentInfo(uint256 _studentId) view public returns (string, string, uint) {
        //설명 매개변수로 받은 studnetId 를 키값으로 활용하여 1234에 매피오딘 value 값인 Student 를 불러온다. 
        return (studentInfo[_studentId].studentName, studnetInfo[_studentId].gender, studentInfo[_studnetId].age);
    }


}