//Buttons and Events

// Main points
// A button is a widget the user can press.
// An event is an action that happens, such as a tap.
// In Flutter, button actions are usually handled with onPressed.

// Common button widgets
// ElevatedButton
// TextButton
// IconButton
// OutlinedButton

// Example:
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
//         body: Center(
//           child: ElevatedButton(
//             onPressed: () {
//               print("Button clicked");
//             },
//             child: const Text("Click Me"),
//           ),
//         ),
//       ),
//     );
//   }
// }

// Key points in the example
// ElevatedButton creates the button.
// onPressed defines what happens when the button is pressed.
// child is the widget shown inside the button.

// Example: changing text when a button is pressed
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
//   String message = "Hello";
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(message, style: const TextStyle(fontSize: 24)),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     message = "Welcome Student";
//                   });
//                 },
//                 child: const Text("Change Text"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// Main points
// StatefulWidget is needed because the UI changes.
// setState() updates the screen.
//The button changes the value of message.