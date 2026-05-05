//Example
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
//       home: StudentScreen(),
//     );
//   }
// }
//
// class StudentScreen extends StatelessWidget {
//   const StudentScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     String name = "Sara";
//     int age = 21;
//     String major = "Computer Science";
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Student Screen"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => DetailsScreen(
//                   name: name,
//                   age: age,
//                   major: major,
//                 ),
//               ),
//             );
//           },
//           child: const Text("Show Student Details"),
//         ),
//       ),
//     );
//   }
// }
//
// class DetailsScreen extends StatelessWidget {
//   final String name;
//   final int age;
//   final String major;
//
//   const DetailsScreen({
//     super.key,
//     required this.name,
//     required this.age,
//     required this.major,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Details Screen"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Name: $name", style: const TextStyle(fontSize: 22)),
//             const SizedBox(height: 10),
//             Text("Age: $age", style: const TextStyle(fontSize: 22)),
//             const SizedBox(height: 10),
//             Text("Major: $major", style: const TextStyle(fontSize: 22)),
//           ],
//         ),
//       ),
//     );
//   }
// }
// Main points
// You can pass more than one value
// The destination screen receives them through its constructor
// required makes sure these values are provided