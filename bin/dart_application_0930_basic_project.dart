import 'package:dart_application_0930_basic_project/dart_application_0930_basic_project.dart' as dart_application_0930_basic_project;
import 'dart:io';
void main(List<String> arguments) {
  print('Hello world: ${dart_application_0930_basic_project.calculate()}!');
  print(arguments);

  stdout.write('Press any key if you want to close! : ');
  stdin.readLineSync();  
}
