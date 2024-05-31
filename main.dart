import 'dart:io';
import 'employee.dart';

void main() {
  final employee = Employee.fromFile('data.txt');
  employee.displayDetails();
}
