// What is Column? The Column widget arranges children vertically.
//
// It puts widgets from top to bottom. Column is like putting books one under another.
//
// Example
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyColumnApp());
// }
//
// class MyColumnApp extends StatelessWidget {
//   const MyColumnApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: const [
//             Text("First"),
//             Text("Second"),
//             Text("Third"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Explain properties
// children : The widgets inside the Column
//
// mainAxisAlignment : Controls vertical alignment in Column
//
// Examples: start, center, end, spaceAround, spaceBetween, spaceEvenly,
//
// crossAxisAlignment: Controls horizontal alignment in Column
//
// Examples: start, center, end

// In Column, the main direction is vertical.
// So mainAxisAlignment moves things up and down.
// crossAxisAlignment moves things left and right.
//
// Another example with spacing feel
// Column(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: const [
//     Text("Name"),
//     Text("Age"),
//     Text("City"),
//   ],
// )

