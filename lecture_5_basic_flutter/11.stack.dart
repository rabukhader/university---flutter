// The Stack widget puts widgets on top of each other.
//
// Stack is like layers.
// One widget can be behind, and another can be in front.
//
// Example
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyStackApp());
// }
//
// class MyStackApp extends StatelessWidget {
//   const MyStackApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 width: 200,
//                 height: 200,
//                 color: Colors.blue,
//               ),
//               Container(
//                 width: 120,
//                 height: 120,
//                 color: Colors.red,
//               ),
//               const Text(
//                 "Stack",
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// first widget is at the back
// then the next widget comes on top
// then the next one comes on top again
//
// In Stack, widgets are layered like papers on top of each other.
