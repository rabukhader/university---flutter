//Example
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
//       routes: {
//         '/': (context) => const HomeScreen(),
//         '/details': (context) => const DetailsScreen(),
//       },
//     );
//   }
// }
//
// class HomeScreen extends StatelessWidget {
//   const HomeScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Home")),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pushNamed(
//               context,
//               '/details',
//               arguments: "Rasheed",
//             );
//           },
//           child: const Text("Go to Details"),
//         ),
//       ),
//     );
//   }
// }
//
// class DetailsScreen extends StatelessWidget {
//   const DetailsScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     final String name =
//         ModalRoute.of(context)!.settings.arguments as String;
//
//     return Scaffold(
//       appBar: AppBar(title: const Text("Details")),
//       body: Center(
//         child: Text(
//           "Hello, $name",
//           style: const TextStyle(fontSize: 24),
//         ),
//       ),
//     );
//   }
// }
// Main points
// arguments sends the data
// ModalRoute.of(context)!.settings.arguments receives it
// this is useful, but constructor passing is easier for beginners