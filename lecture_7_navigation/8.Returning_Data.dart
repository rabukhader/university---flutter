//Sometimes the second screen sends data back to the first screen.
//
// Example:
//
// open a selection screen
// choose an item
// return the chosen value
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
//       home: HomeScreen(),
//     );
//   }
// }
//
// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});
//
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }
//
// class _HomeScreenState extends State<HomeScreen> {
//   String result = "No data received";
//
//   Future<void> goToSecondScreen() async {
//     final returnedData = await Navigator.push(
//       context,
//       MaterialPageRoute(
//         builder: (context) => const SecondScreen(),
//       ),
//     );
//
//     setState(() {
//       result = returnedData ?? "No data received";
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Home Screen"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text(result, style: const TextStyle(fontSize: 22)),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: goToSecondScreen,
//               child: const Text("Open Second Screen"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
//
// class SecondScreen extends StatelessWidget {
//   const SecondScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Second Screen"),
//       ),
//       body: Center(
//         child: ElevatedButton(
//           onPressed: () {
//             Navigator.pop(context, "Data from second screen");
//           },
//           child: const Text("Send Data Back"),
//         ),
//       ),
//     );
//   }
// }
// Explanation
// await Navigator.push(...)
//
// Waits until the second screen is closed.
//
// Navigator.pop(context, "Data from second screen")
//
// Closes the screen and sends data back.
//
// Main point
//
// Navigation can work in both directions:
//
// send data to next screen
// receive data back from next screen