import 'package:dart_application_0930_basic_project/homework1.dart';
import 'package:dart_application_0930_basic_project/forHomework2/homework2.dart';
import 'dart:io';

import 'dart:math';

// 랜덤 이름을 생성하여 반환하는 함수
String generateRandomName() {
  // 1. 이름 목록
  final List<String> surnames = ['김', '이', '박', '최', '정', '강', '조', '윤', '장'];
  final List<String> givenNames = ['도헌', '종현', '민준', '서준', '도윤', '예준', '시우', '하준', '지호', '주원', '서연', '서윤', '지우', '하윤', '민서'];

  // 2. 랜던 선택을 위한 Random 객체 생성
  final random = Random();

  // 3. 성과 이름을 각각 무작위로 선택
  final String randomSurname = surnames[random.nextInt(surnames.length)];
  final String randomGivenName = givenNames[random.nextInt(givenNames.length)];

  // 4. 선택된 성과 이름을 조합하여 반환
  return randomSurname + randomGivenName;
}

void main(List<String> arguments) {
  print("---------------------------------------------");
  print("------------------homework1------------------");
  print("---------------------------------------------");
  

  stdout.write('음이 아닌 정수를 입력하세요.: ');
  String? input = stdin.readLineSync();
  try {
    int num = int.parse(input!);
    int result = homework(num);
    print("결과는 = $result");

    stdout.write('homework2 결과를 보려면 아무 키나 누르세요.');
    stdin.readLineSync();
  } catch (e) {
    print("입력 조건에 어긋납니다.");
    stdin.readLineSync();
  }
  


  print("---------------------------------------------");
  print("------------------homework2------------------");
  print("---------------------------------------------");
  StudentManager manager = StudentManager();
  int numberOfStudent = 10;
  
  for (int i=0; i<numberOfStudent; i++) {
    String name = generateRandomName();
    Student st = Student.randomly(name);
    manager.addStudent(st);
  }
  
  print("${manager.getNumverOfStudent()}명의 학생 정보가 생성되었습니다.");
  print("학생들 정보 출력");
  print("  이름  컴프 시프 클라우드 평균");
  List students = manager.aList;
  for (var student in students) {
    student.printStudentInfo();
  }

  print("--- 성적순(오름차순) 정렬 결과 ---");
  print("  이름  컴프 시프 클라우드 평균  합격여부");
  List sortedList = manager.sortingByAvg();
  for (var student in sortedList) {
    student.printStudentPassFail();
    
  }

  stdin.readLineSync();
  
}
