// Layout organization means arranging widgets in a clean and logical way.
//
// Important layout widgets:
//
// Column for vertical arrangement
// Row for horizontal arrangement
// Container for spacing and styling
// Padding for inner spacing
// SizedBox for fixed spaces
// Center for centering widgets

// Example: organized layout using Column and Padding
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
//     return MaterialApp(
//       home: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: const [
//               Text(
//                 "Student Information",
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20),
//               Text("Name: Ahmad"),
//               SizedBox(height: 10),
//               Text("Age: 20"),
//               SizedBox(height: 10),
//               Text("Major: Computer Science"),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Main points
// Padding adds space around the whole content.
// Column places widgets from top to bottom.
// SizedBox adds spacing between widgets.
// crossAxisAlignment: CrossAxisAlignment.start aligns content to the left.
// Example: Row for placing elements side by side
// Row(
//   mainAxisAlignment: MainAxisAlignment.center,
//   children: const [
//     Icon(Icons.email),
//     SizedBox(width: 8),
//     Text("student@email.com"),
//   ],
// )
// Main points
// Row places widgets horizontally.
// SizedBox(width: 8) adds horizontal spacing.
// This is useful for contact details, icons with text, and small grouped items.