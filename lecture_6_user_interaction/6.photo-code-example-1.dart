//Main widgets used
// MaterialApp
// Scaffold
// AppBar
// SingleChildScrollView
// Padding
// Column
// Container
// Row
// CircleAvatar or Icon
// Text
// TextField
// RadioListTile or Row + Radio
// ElevatedButton
// Card or Container
// ListTile


//MaterialApp
//  └── Scaffold
//       ├── AppBar
//       └── Body
//            └── SingleChildScrollView
//                 └── Padding
//                      └── Column
//                           ├── Container   // welcome box
//                           │    └── Row
//                           │         ├── CircleAvatar / Icon
//                           │         └── Column
//                           │              ├── Text("Hello, Ahmed!")
//                           │              └── Text("Welcome Back")
//                           │
//                           ├── Text("Enter Your Information")
//                           ├── TextField   // full name
//                           ├── TextField   // email
//                           ├── Text("Choose Your Level")
//                           ├── RadioListTile
//                           ├── RadioListTile
//                           ├── RadioListTile
//                           ├── ElevatedButton
//                           ├── Text("Your Courses")
//                           ├── Card / Container
//                           │    └── ListTile
//                           └── Card / Container
//                                └── ListTile




//import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const StudentApp());
// }
//
// class StudentApp extends StatefulWidget {
//   const StudentApp({super.key});
//
//   @override
//   State<StudentApp> createState() => _StudentAppState();
// }
//
// class _StudentAppState extends State<StudentApp> {
//   final TextEditingController nameController = TextEditingController();
//   final TextEditingController emailController = TextEditingController();
//
//   String selectedLevel = "Beginner";
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Student App"),
//           centerTitle: true,
//           leading: const Icon(Icons.menu),
//           actions: const [
//             Padding(
//               padding: EdgeInsets.only(right: 12),
//               child: Icon(Icons.notifications_none),
//             )
//           ],
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Container(
//                   padding: const EdgeInsets.all(16),
//                   decoration: BoxDecoration(
//                     color: Colors.blue.shade50,
//                     borderRadius: BorderRadius.circular(16),
//                     border: Border.all(color: Colors.blue.shade100),
//                   ),
//                   child: const Row(
//                     children: [
//                       CircleAvatar(
//                         radius: 28,
//                         child: Icon(Icons.person, size: 30),
//                       ),
//                       SizedBox(width: 16),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Hello, Ahmed!",
//                             style: TextStyle(
//                               fontSize: 20,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text("Welcome Back"),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 24),
//
//                 const Text(
//                   "Enter Your Information",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 12),
//
//                 TextField(
//                   controller: nameController,
//                   decoration: const InputDecoration(
//                     labelText: "Full Name",
//                     prefixIcon: Icon(Icons.person_outline),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 const SizedBox(height: 12),
//
//                 TextField(
//                   controller: emailController,
//                   decoration: const InputDecoration(
//                     labelText: "Email Address",
//                     prefixIcon: Icon(Icons.email_outlined),
//                     border: OutlineInputBorder(),
//                   ),
//                 ),
//                 const SizedBox(height: 20),
//
//                 const Text(
//                   "Choose Your Level",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//
//                 RadioListTile(
//                   title: const Text("Beginner"),
//                   value: "Beginner",
//                   groupValue: selectedLevel,
//                   onChanged: (value) {
//                     setState(() {
//                       selectedLevel = value!;
//                     });
//                   },
//                 ),
//                 RadioListTile(
//                   title: const Text("Intermediate"),
//                   value: "Intermediate",
//                   groupValue: selectedLevel,
//                   onChanged: (value) {
//                     setState(() {
//                       selectedLevel = value!;
//                     });
//                   },
//                 ),
//                 RadioListTile(
//                   title: const Text("Advanced"),
//                   value: "Advanced",
//                   groupValue: selectedLevel,
//                   onChanged: (value) {
//                     setState(() {
//                       selectedLevel = value!;
//                     });
//                   },
//                 ),
//
//                 const SizedBox(height: 12),
//
//                 SizedBox(
//                   width: double.infinity,
//                   child: ElevatedButton(
//                     onPressed: () {
//                       print("Name: ${nameController.text}");
//                       print("Email: ${emailController.text}");
//                       print("Level: $selectedLevel");
//                     },
//                     child: const Text("Save Information"),
//                   ),
//                 ),
//
//                 const SizedBox(height: 24),
//
//                 const Text(
//                   "Your Courses",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 12),
//
//                 Card(
//                   child: ListTile(
//                     leading: const Icon(Icons.menu_book_outlined),
//                     title: const Text("Flutter Basics"),
//                     trailing: const Icon(Icons.arrow_forward_ios, size: 18),
//                     onTap: () {},
//                   ),
//                 ),
//                 Card(
//                   child: ListTile(
//                     leading: const Icon(Icons.code),
//                     title: const Text("Dart Programming"),
//                     trailing: const Icon(Icons.arrow_forward_ios, size: 18),
//                     onTap: () {},
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }