//A. Passing one value
// Example
// import 'package:flutter/material.dart';
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
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   final String studentName = "Ahmad";
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home Screen"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DetailsScreen(name: studentName),
//               ),
//             );
//           },
//           child: const Text("Go to Details"),
//         ),
//       ),
//     );
//   }
// }
//
// class DetailsScreen extends StatelessWidget {
//   final String name;
//
//   const DetailsScreen({super.key, required this.name});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Details Screen"),
//       ),
//       body: Center(
//         child: Text(
//           "Student Name: $name",
//           style: const TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
// Explanation
// In HomeScreen
//
// We have:
//
// final String studentName = "Ahmad";
//
// Then we send it:
//
// DetailsScreen(name: studentName)
// In DetailsScreen
//
// We receive it:
//
// final String name;
//
// and inside constructor:
//
// const DetailsScreen({super.key, required this.name});
// Main point
//
// Passing data works by:
//
// creating a variable in the destination screen
// receiving it through constructor
// sending the value when navigating