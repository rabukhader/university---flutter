// API stands for Application Programming Interface.
//
// In simple words:
// an API allows your app to get data from another service.
//
// Examples:
//
// weather data
// posts
// users
// products
// news
// What is REST API?
//
// A REST API is a common way to send and receive data over the internet.
//
// Common HTTP methods:
//
// GET → get data
// POST → send data
// PUT → update data
// DELETE → delete data
//
// For this lecture, the focus is mainly on GET.
//
// Package needed
//
// Usually we use the http package.
//
// Add in pubspec.yaml:
//
// dependencies:
// flutter:
// sdk: flutter
// http: ^1.2.0
//
// Then import:
//
// import 'package:http/http.dart' as http;
// import 'dart:convert';
// Example: fetching data from API
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// Future<void> fetchPost() async {
//   final response = await http.get(
//     Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
//   );
//
//   if (response.statusCode == 200) {
//     final data = jsonDecode(response.body);
//     print(data["title"]);
//   } else {
//     print("Failed to load data");
//   }
// }
//
// void main() {
//   fetchPost();
// }
// Explanation
// http.get() sends a GET request
// Uri.parse() converts the URL string into a URI
// response.body contains the returned JSON text
// jsonDecode() converts it into Dart data
// statusCode == 200 means success