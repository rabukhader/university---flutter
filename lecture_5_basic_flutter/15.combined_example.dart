// Combined Layout Example
//
// This example uses: Column, Row, Container, Text, Icon

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyLayoutApp());
// }
//
// class MyLayoutApp extends StatelessWidget {
//   const MyLayoutApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Layout Basics")),
//         body: Center(
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             margin: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.grey.shade200,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Icon(Icons.person, size: 60, color: Colors.blue),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "Rasheed Abu Khader",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     Icon(Icons.email),
//                     SizedBox(width: 8),
//                     Text("example@email.com"),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
