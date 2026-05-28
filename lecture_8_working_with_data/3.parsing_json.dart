//Parsing JSON means converting JSON data into Dart objects or usable Dart structures.
//
// In Flutter, this usually means:
//
// converting JSON string into Map<String, dynamic>
// or converting JSON list into List<dynamic>
// ------------------------------------------------------------
// Import needed
// import 'dart:convert';
//
// This package is used to work with JSON in Dart.
// ------------------------------------------------------------
// Example: parse a JSON object
// import 'dart:convert';
//
// void main() {
//   String jsonString = '{"name":"Ahmad","age":20}';
//
//   Map<String, dynamic> student = jsonDecode(jsonString);
//
//   print(student["name"]);
//   print(student["age"]);
// }
// Explanation
// jsonString contains JSON text
// jsonDecode() converts it into a Dart map
// then we can access values using keys
// Example: parse a JSON list
// import 'dart:convert';
//
// void main() {
//   String jsonString = '''
//   [
//     {"name":"Ahmad","age":20},
//     {"name":"Sara","age":22}
//   ]
//   ''';
//
//   List<dynamic> students = jsonDecode(jsonString);
//
//   print(students[0]["name"]);
//   print(students[1]["age"]);
// }
// ------------------------------------------------------------
// Main points
// jsonDecode() can return:
// Map<String, dynamic> --> {"name": "Ahmad", "age": 20}
// or List<dynamic> --> ["Ahmad", "Sara"]
// you access list items by index --> students[0]["name"]
// you access object values by key --> students[0]["name"]
// ------------------------------------------------------------