//Here is a simple example file for animated_text_kit you can use in class as main.dart:
//Add this package in pubspec.yaml:
// dependencies:
//   animated_text_kit: ^4.2.2

// import 'package:flutter/material.dart';
// import 'package:animated_text_kit/animated_text_kit.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: AnimatedTextExample(),
//     );
//   }
// }

// class AnimatedTextExample extends StatelessWidget {
//   const AnimatedTextExample({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Animated Text Kit"),
//         centerTitle: true,
//       ),
//       body: Center(
//         child: DefaultTextStyle(
//           style: const TextStyle(
//             fontSize: 28,
//             fontWeight: FontWeight.bold,
//             color: Colors.blue,
//           ),
//           child: AnimatedTextKit(
//             animatedTexts: [
//               TypewriterAnimatedText("Welcome Students"),
//               FadeAnimatedText("Welcome to Flutter"),
//               WavyAnimatedText("Using Packages is Easy"),
//             ],
//             repeatForever: true,
//             pause: const Duration(milliseconds: 800),
//           ),
//         ),
//       ),
//     );
//   }
// }