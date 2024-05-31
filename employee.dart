import 'person.dart';
import 'dart:io';

class Employee implements Person {
  @override
  String name;
  @override
  int age;
  String position;

  Employee(this.name, this.age, this.position);

  Employee.fromFile(String filename)
      : name = '',
        age = 0,
        position = '' {
    var lines = File(filename).readAsLinesSync();
    name = lines[0];
    age = int.parse(lines[1]);
    position = lines[2];
  }

  @override
  void displayDetails() {
    print('Name: $name');
    print('Age: $age');
    print('Position: $position');
  }

  void work() {
    for (int i = 0; i < 5; i++) {
      print('$name is working... $i');
    }
  }
}
