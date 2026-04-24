// A StatefulWidget is a widget that can change while the app is running.
//
// It is like a light switch. At first it is OFF, then when you press it, it becomes ON.
//
// Stateful means the widget has data that can change, and when that data changes, the UI changes too.
//
// Example
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyCounterApp());
// }
//
// class MyCounterApp extends StatefulWidget {
//   const MyCounterApp({super.key});
//
//   @override
//   State<MyCounterApp> createState() => _MyCounterAppState();
// }
//
// class _MyCounterAppState extends State<MyCounterApp> {
//   int counter = 0;
//
//   void increaseCounter() {
//     setState(() {
//       counter++;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Counter App")),
//         body: Center(
//           child: Text(
//             "Counter: $counter",
//             style: const TextStyle(fontSize: 24),
//           ),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: increaseCounter,
//           child: const Icon(Icons.add),
//         ),
//       ),
//     );
//   }
// }

// StatefulWidget : This means the widget can change.
//
// createState() : Creates the state object.
// int counter = 0; // This variable stores the current value.
//
// setState() // This is very important.
//
// It tells Flutter: something changed, rebuild the UI
//
// If we change a variable without setState(), Flutter may not update the screen.
// setState() tells Flutter: redraw this widget.
