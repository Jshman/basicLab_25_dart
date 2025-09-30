/*
* 성적표를 만드는 프로그램으로 학생 클래스에 학생이름과 3과목의 대한 점수를 아스키코드와 랜덤함수를 이용하여 설정하고 출력한다. 
* 리스트 자료 구조를 이용하고 정렬하는 방법도 알아본다.
* 평균 구하는 기능을 클래스의 메소드를 이용하여 처리하고, 정렬상태를 조절하고, 조건문을 이용하여 PASS, FAIL 설정
*/

import 'dart:math';

class Student {
  String? name;
  int comp = 0;
  int sysp = 0;
  int cloud = 0;
  double avg = 0.0;

  Student.randomly(this.name) {
    comp = Random().nextInt(101); // 0~100점
    sysp = Random().nextInt(101);
    cloud = Random().nextInt(101);

    setAvg();
  }
  
  void setAvg() => avg = (comp + sysp + cloud) / 3.0;

  void printStudentInfo() {
    // 이름, 컴프, 시프, 클라우드, 평균
    print(name!.padLeft(4) +
          comp.toString().padLeft(5) +
          sysp.toString().padLeft(5) +
          cloud.toString().padLeft(5)+
          avg.toStringAsFixed(3).padLeft(10));
  }

  void printStudentPassFail() {
    // 이름, 컴프, 시프, 클라우드, 평균
    String str = name!.padLeft(4) +
          comp.toString().padLeft(5) +
          sysp.toString().padLeft(5) +
          cloud.toString().padLeft(5)+
          avg.toStringAsFixed(3).padLeft(10);

    if (avg > 50.0) {str += "PASS".padLeft(7);}
    else            {str += "FAIL".padLeft(7);}
    
    print(str);
  }

}

