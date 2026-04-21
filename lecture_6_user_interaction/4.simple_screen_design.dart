//4. Simple Screen Design
// Main points
//
// A simple screen design combines:
//
// a title
// input fields
// buttons
// spacing
// clean alignment
//
// The goal is to keep the screen easy to read and easy to use.
//
// Example: simple login-style screen
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
//         appBar: AppBar(title: const Text("Simple Screen")),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: const [
//               Text(
//                 "Login",
//                 style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: "Email",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               TextField(
//                 decoration: InputDecoration(
//                   labelText: "Password",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: null,
//                 child: Text("Login"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// Main points
// AppBar gives the page a title area.
// Padding keeps content away from screen edges.
// Column organizes the widgets vertically.
// crossAxisAlignment: CrossAxisAlignment.stretch makes the button and text fields take full width.
// SizedBox adds clear spacing.
// TextField is used for user input.
// ElevatedButton is used for actions.