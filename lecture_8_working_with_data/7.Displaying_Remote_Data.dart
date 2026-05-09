// After fetching data from an API, the next step is showing it on the screen.
//
// Usually we:
//
// fetch the data
// store it in a variable
// update the UI
// Example: display one post title
// import 'package:flutter/material.dart';
// import 'package:http/http.dart' as http;
// import 'dart:convert';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: PostScreen(),
//     );
//   }
// }
//
// class PostScreen extends StatefulWidget {
//   const PostScreen({super.key});
//
//   @override
//   State<PostScreen> createState() => _PostScreenState();
// }
//
// class _PostScreenState extends State<PostScreen> {
//   String title = "Loading...";
//
//   Future<void> fetchPost() async {
//     final response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/posts/1'),
//     );
//
//     if (response.statusCode == 200) {
//       final data = jsonDecode(response.body);
//
//       setState(() {
//         title = data["title"];
//       });
//     } else {
//       setState(() {
//         title = "Failed to load data";
//       });
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     fetchPost();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Remote Data"),
//       ),
//       body: Center(
//         child: Text(
//           title,
//           style: const TextStyle(fontSize: 20),
//           textAlign: TextAlign.center,
//         ),
//       ),
//     );
//   }
// }
// Explanation
// title = "Loading..."
//
// Initial text before data arrives
//
// fetchPost()
//
// Gets the post from the API
//
// setState()
//
// Updates the screen with the fetched title
//
// initState()
//
// Runs once when the screen starts