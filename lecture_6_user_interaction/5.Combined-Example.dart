//Combined Example: simple user interaction screen
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
//   final TextEditingController controller = TextEditingController();
//   String result = "";
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Greeting App")),
//         body: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: [
//               const Text(
//                 "Enter Your Name",
//                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 20),
//               TextField(
//                 controller: controller,
//                 decoration: const InputDecoration(
//                   labelText: "Name",
//                   border: OutlineInputBorder(),
//                 ),
//               ),
//               const SizedBox(height: 20),
//               ElevatedButton(
//                 onPressed: () {
//                   setState(() {
//                     result = "Hello, ${controller.text}";
//                   });
//                 },
//                 child: const Text("Submit"),
//               ),
//               const SizedBox(height: 20),
//               Text(
//                 result,
//                 style: const TextStyle(fontSize: 22),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }