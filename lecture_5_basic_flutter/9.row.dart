// What is Row? : The Row widget arranges children horizontally. It puts widgets side by side.
//
// Example
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyRowApp());
// }
//
// class MyRowApp extends StatelessWidget {
//   const MyRowApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: const [
//             Icon(Icons.home),
//             SizedBox(width: 20),
//             Icon(Icons.favorite),
//             SizedBox(width: 20),
//             Icon(Icons.person),
//           ],
//         ),
//       ),
//     );
//   }
// }
// Explain properties
//
// In Row:
//
// mainAxisAlignment = horizontal direction
// crossAxisAlignment = vertical direction
// So mainAxisAlignment moves things left and right.
// crossAxisAlignment moves things up and down.
