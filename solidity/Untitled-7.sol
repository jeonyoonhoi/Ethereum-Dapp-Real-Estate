 contract MyContract {
     struct studentName{
         string studentName;
         string gender;
         uint age;
     }

     Student[] students;

     funciton addStudent(string _ name, string _gender, uint _age) public {
         students.push(Student(_name, _gender, _age));
         // student 상태변수 배열에 새로운 Student 입력   
         
         Student storage updateStudent = students[0];
         // storage 에 저장하는 새로운 Student 선언
         // 상태변수 students 배열의 첫 번째 인덱스 값을 대입
         // "storage" 로 선언했기 때문에 상태변수를 가르키는 포인터 역할

         updateStudent.age = 55;
         //updataStudent age 필드를 55로 변경
         // 결과적으로는 상태변수 students 배열의 첫 번째 이ㅣㄴ덱스의 age 필드를 55 로 변경한다. 

         Student memory updateStudent2 = students[0];
         // memory 에 저장하는 새로운 Student 선언
         // 상태변수 students 배열의 첫 번째 인덱스 값을 대입
         // memory 로 선언됐기 때문에 복사한다. 

         updateStudent2.age = 20;
         //updateStudent2의 age 필드를 20으로 변경
         // 이 경우는 복사된 updateStudent2의 age 의 값이 변경된다. 

         students[0] =updateStudent2;
         //memory 배열으 ㅣ값을 상태변수에 직접적으로 대입해주면 
         // students 값 영구히 변경 

     }
 }