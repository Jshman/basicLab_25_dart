/*
* 성적표를 만드는 프로그램으로 학생 클래스에 학생이름과 3과목의 대한 점수를 아스키코드와 랜덤함수를 이용하여 설정하고 출력한다. 
* 리스트 자료 구조를 이용하고 정렬하는 방법도 알아본다.
* 평균 구하는 기능을 클래스의 메소드를 이용하여 처리하고, 정렬상태를 조절하고, 조건문을 이용하여 PASS, FAIL 설정
*/

import 'package:dart_application_0930_basic_project/forHomework2/student.dart';

class StudentManager {
  
  var aList = List.empty(growable: true);


  void addStudent(Student st) { aList.add(st); }

  int getNumverOfStudent() {return aList.length;}

  List sortingByAvg() {
    List newList = List.from(aList);
    newList.sort((a, b) => a.avg.compareTo(b.avg));
    return newList;
  }
}