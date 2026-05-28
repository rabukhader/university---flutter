// \SharedPreferences is a Flutter package used to store small key-value data locally.

// Key-value means
// key = the name of the data
// value = the actual saved data

// Example:

// "username" → "Ahmad"
// "isDarkMode" → true
// "age" → 20
// What data types can it store?
// String
// int
// double
// bool
// List<String>
// When is SharedPreferences useful?

// It is useful for:

// simple settings
// user name
// login state
// app theme
// small note text
// saved preferences
// When is it not enough?

// It is not suitable for:

// many records
// structured relational data
// large databases
// complex data management
// 7. Installing SharedPreferences

// Add to pubspec.yaml:

// dependencies:
//   flutter:
//     sdk: flutter
//   shared_preferences: ^2.2.2

// Then run:

// flutter pub get

// Import it:

// import 'package:shared_preferences/shared_preferences.dart';
// 8. Saving Data with SharedPreferences
// Example: save a user name
// import 'package:shared_preferences/shared_preferences.dart';

// Future<void> saveName() async {
//   final prefs = await SharedPreferences.getInstance();
//   await prefs.setString('username', 'Ahmad');
// }
// Explanation
// getInstance() gives access to local storage
// setString() saves a string
// 'username' is the key
// 'Ahmad' is the value
// Example: save multiple values
// import 'package:shared_preferences/shared_preferences.dart';

// Future<void> saveData() async {
//   final prefs = await SharedPreferences.getInstance();

//   await prefs.setString('name', 'Sara');
//   await prefs.setInt('age', 21);
//   await prefs.setBool('isLoggedIn', true);
// }
// 9. Reading Data with SharedPreferences
// Example
// import 'package:shared_preferences/shared_preferences.dart';

// Future<void> loadData() async {
//   final prefs = await SharedPreferences.getInstance();

//   String? name = prefs.getString('name');
//   int? age = prefs.getInt('age');
//   bool? isLoggedIn = prefs.getBool('isLoggedIn');

//   print(name);
//   print(age);
//   print(isLoggedIn);
// }
// Main points
// getString() reads string
// getInt() reads integer
// getBool() reads boolean
// if no value exists, it returns null
// 10. Removing Data
// Remove one value
// Future<void> removeName() async {
//   final prefs = await SharedPreferences.getInstance();
//   await prefs.remove('name');
// }
// Clear everything
// Future<void> clearAll() async {
//   final prefs = await SharedPreferences.getInstance();
//   await prefs.clear();
// }
// 11. Flutter Example — Save and Show a Note

// This is a good classroom example because it is simple and useful.

// import 'package:flutter/material.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const MaterialApp(
//       home: NoteScreen(),
//     );
//   }
// }

// class NoteScreen extends StatefulWidget {
//   const NoteScreen({super.key});

//   @override
//   State<NoteScreen> createState() => _NoteScreenState();
// }

// class _NoteScreenState extends State<NoteScreen> {
//   final TextEditingController noteController = TextEditingController();
//   String savedNote = "No note saved";

//   Future<void> saveNote() async {
//     final prefs = await SharedPreferences.getInstance();
//     await prefs.setString('note', noteController.text);

//     setState(() {
//       savedNote = noteController.text;
//     });
//   }

//   Future<void> loadNote() async {
//     final prefs = await SharedPreferences.getInstance();

//     setState(() {
//       savedNote = prefs.getString('note') ?? "No note saved";
//     });
//   }

//   @override
//   void initState() {
//     super.initState();
//     loadNote();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Local Note App"),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20),
//         child: Column(
//           children: [
//             TextField(
//               controller: noteController,
//               decoration: const InputDecoration(
//                 labelText: "Enter your note",
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: saveNote,
//               child: const Text("Save Note"),
//             ),
//             const SizedBox(height: 20),
//             Text(
//               savedNote,
//               style: const TextStyle(fontSize: 22),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }