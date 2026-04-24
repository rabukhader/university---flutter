//TextField and User Input

//Main points
// TextField allows the user to type text.
// User input is usually read using TextEditingController.
// This is useful for forms, login screens, search bars, and simple apps.

// Example: simple TextField
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
//       home: Scaffold(
//         body: Padding(
//           padding: EdgeInsets.all(20),
//           child: TextField(
//             decoration: InputDecoration(
//               labelText: "Enter your name",
//               border: OutlineInputBorder(),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Key points
// TextField is the input box.
// decoration is used for styling.
// labelText adds a label.

// OutlineInputBorder() gives the field a visible border.
// Example: reading user input and showing it on screen
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatefulWidget {
//   const MyApp({super.key});
//
//   @override
//   State<MyApp> createState() => _MyAppState();
// }
//
// class _MyAppState extends State<MyApp> {
//   final TextEditingController nameController = TextEditingController();
//   String name = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("User Input")),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               TextField(
//                 controller: nameController,
//                 decoration: const InputDecoration(
//                   labelText: "Enter your name",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     name = nameController.text;
//                   });
//                 },
//                 child: const Text("Show Name"),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 "Hello, $name",
//                 style: const TextStyle(fontSize: 22),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }


// Main points
// TextEditingController reads the typed text.
// nameController.text gets the current input.
// setState() updates the displayed text.