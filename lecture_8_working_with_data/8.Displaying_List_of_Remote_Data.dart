//Example: list of users
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
//       home: UsersScreen(),
//     );
//   }
// }
//
// class UsersScreen extends StatefulWidget {
//   const UsersScreen({super.key});
//
//   @override
//   State<UsersScreen> createState() => _UsersScreenState();
// }
//
// class _UsersScreenState extends State<UsersScreen> {
//   List<dynamic> users = [];
//   bool isLoading = true;
//
//   Future<void> fetchUsers() async {
//     final response = await http.get(
//       Uri.parse('https://jsonplaceholder.typicode.com/users'),
//     );
//
//     if (response.statusCode == 200) {
//       setState(() {
//         users = jsonDecode(response.body);
//         isLoading = false;
//       });
//     } else {
//       setState(() {
//         isLoading = false;
//       });
//     }
//   }
//
//   @override
//   void initState() {
//     super.initState();
//     fetchUsers();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Users"),
//       ),
//       body: isLoading
//           ? const Center(child: CircularProgressIndicator())
//           : ListView.builder(
//               itemCount: users.length,
//               itemBuilder: (context, index) {
//                 return ListTile(
//                   title: Text(users[index]["name"]),
//                   subtitle: Text(users[index]["email"]),
//                 );
//               },
//             ),
//     );
//   }
// }
// Main points
// ListView.builder is used for dynamic lists
// users stores the fetched data
// isLoading controls loading state
// CircularProgressIndicator() shows loading visually