// Why use models?
//
// Using models makes the code cleaner and easier to manage.
//
// Instead of working with raw maps everywhere, we create a class.
//
// Example model
// class Student {
// final String name;
// final int age;
//
// Student({
// required this.name,
// required this.age,
// });
//
// factory Student.fromJson(Map<String, dynamic> json) {
// return Student(
// name: json["name"],
// age: json["age"],
// );
// }
// }
// Using the model
// import 'dart:convert';
//
// class Student {
// final String name;
// final int age;
//
// Student({
// required this.name,
// required this.age,
// });
//
// factory Student.fromJson(Map<String, dynamic> json) {
// return Student(
// name: json["name"],
// age: json["age"],
// );
// }
// }
//
// void main() {
// String jsonString = '{"name":"Ahmad","age":20}';
//
// Map<String, dynamic> data = jsonDecode(jsonString);
//
// Student student = Student.fromJson(data);
//
// print(student.name);
// print(student.age);
// }
// Main points
// fromJson() converts JSON into a Dart object
// models are useful when app data becomes larger
// this is a common Flutter practice