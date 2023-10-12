import 'package:dart_students/students.dart';
import 'dart:convert';

void main() {
  String studentList = '''
  [
    {"first":"Steve", "last":"Griffith", "email":"griffis@algonquincollege.com"},
    {"first":"Adesh", "last":"Shah", "email":"shaha@algonquincollege.com"},
    {"first":"Tony", "last":"Davidson", "email":"davidst@algonquincollege.com"},
    {"first":"Adam", "last":"Robillard", "email":"robilla@algonquincollege.com"}
  ]
  ''';

  List<Map<String, String>> data = List<Map<String, String>>.from(
      jsonDecode(studentList).map((i) => Map<String, String>.from(i)));

  Students students = Students(data);

  print("-----------------Sorted Data-----------------");
  students.sort('email');
  students.output();

  print("-----------------New Data-----------------");
  students.plus({
    "first": "Giselle",
    "last": "Mingue",
    "email": "ming0025@algonquinlive.com"
  });
  students.remove('Adam');
  students.output();
}
