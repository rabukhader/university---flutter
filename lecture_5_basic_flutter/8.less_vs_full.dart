// A StatelessWidget is a widget that does not change after it appears on the screen.
//
// It is like a printed paper. If you print a paper, it stays the same unless you create a new one.
//
// Stateless means the widget shows something fixed. It does not change by itself while the app is running.
//
// Example
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
//         body: Center(
//           child: Text("Hello Flutter"),
//         ),
//       ),
//     );
//   }
// }
// Why is this stateless?
//
// Because: the text is fixed, nothing changes when we press or interact
//
//
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
//
// Simple comparison table
// StatelessWidget : fixed, no changing data, simple UI, example: logo, title, static text
// StatefulWidget : can change, has changing data, interactive UI, example: counter, form, checkbox

// Stateless example
// class WelcomeText extends StatelessWidget {
//   const WelcomeText({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Text("Welcome Students");
//   }
// }
// Stateful example
// class LikeButton extends StatefulWidget {
//   const LikeButton({super.key});
//
//   @override
//   State<LikeButton> createState() => _LikeButtonState();
// }
//
// class _LikeButtonState extends State<LikeButton> {
//   bool liked = false;
//
//   @override
//   Widget build(BuildContext context) {
//     return ElevatedButton(
//       onPressed: () {
//         setState(() {
//           liked = !liked;
//         });
//       },
//       child: Text(liked ? "Liked" : "Like"),
//     );
//   }
// }
//
// If the UI is fixed, use Stateless.
// If the UI changes because of interaction or data, use Stateful.