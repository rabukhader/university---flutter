//Exercise — Task Manager screen
// Main widgets used
// MaterialApp
// Scaffold
// AppBar
// Padding
// Column
// Row
// Container
// TextField
// ElevatedButton / OutlinedButton
// Expanded
// ListView
// Checkbox
// IconButton
// BottomNavigationBar

//MaterialApp
//  └── Scaffold
//       ├── AppBar
//       ├── Body
//       │    └── Padding
//       │         └── Column
//       │              ├── Row              // icon + title
//       │              ├── TextField        // add task
//       │              ├── Row              // filter buttons
//       │              ├── Text("Task List")
//       │              ├── Expanded
//       │              │    └── ListView
//       │              │         ├── Container / Card
//       │              │         │    └── Row
//       │              │         │         ├── Checkbox
//       │              │         │         ├── Expanded(Text)
//       │              │         │         └── IconButton(delete)
//       │              │         └── ...
//       │              └── ElevatedButton   // clear completed
//       └── BottomNavigationBar



//
//import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const TaskManagerApp());
// }
//
// class TaskManagerApp extends StatefulWidget {
//   const TaskManagerApp({super.key});
//
//   @override
//   State<TaskManagerApp> createState() => _TaskManagerAppState();
// }
//
// class _TaskManagerAppState extends State<TaskManagerApp> {
//   final TextEditingController taskController = TextEditingController();
//
//   List<Map<String, dynamic>> tasks = [
//     {"title": "Learn Flutter", "done": false},
//     {"title": "Build UI Screen", "done": true},
//     {"title": "Read Documentation", "done": false},
//     {"title": "Practice Widgets", "done": true},
//   ];
//
//   void addTask() {
//     if (taskController.text.trim().isNotEmpty) {
//       setState(() {
//         tasks.add({"title": taskController.text.trim(), "done": false});
//         taskController.clear();
//       });
//     }
//   }
//
//   void clearCompleted() {
//     setState(() {
//       tasks.removeWhere((task) => task["done"] == true);
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text("Task Manager"),
//           actions: const [
//             Padding(
//               padding: EdgeInsets.only(right: 12),
//               child: Icon(Icons.more_vert),
//             )
//           ],
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(16),
//           child: Column(
//             children: [
//               Row(
//                 children: const [
//                   CircleAvatar(
//                     radius: 28,
//                     child: Icon(Icons.assignment_outlined, size: 28),
//                   ),
//                   SizedBox(width: 16),
//                   Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       Text(
//                         "My Tasks",
//                         style: TextStyle(
//                           fontSize: 22,
//                           fontWeight: FontWeight.bold,
//                         ),
//                       ),
//                       Text("Stay Organized"),
//                     ],
//                   ),
//                 ],
//               ),
//               const SizedBox(height: 20),
//
//               Row(
//                 children: [
//                   Expanded(
//                     child: TextField(
//                       controller: taskController,
//                       decoration: const InputDecoration(
//                         hintText: "Add a new task...",
//                         border: OutlineInputBorder(),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(width: 8),
//                   IconButton(
//                     onPressed: addTask,
//                     icon: const Icon(Icons.add),
//                   ),
//                 ],
//               ),
//
//               const SizedBox(height: 16),
//
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                 children: [
//                   OutlinedButton(onPressed: () {}, child: const Text("All")),
//                   OutlinedButton(onPressed: () {}, child: const Text("Work")),
//                   OutlinedButton(onPressed: () {}, child: const Text("Personal")),
//                   OutlinedButton(onPressed: () {}, child: const Text("Study")),
//                 ],
//               ),
//
//               const SizedBox(height: 16),
//
//               const Align(
//                 alignment: Alignment.centerLeft,
//                 child: Text(
//                   "Task List",
//                   style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//                 ),
//               ),
//               const SizedBox(height: 10),
//
//               Expanded(
//                 child: ListView.builder(
//                   itemCount: tasks.length,
//                   itemBuilder: (context, index) {
//                     return Card(
//                       child: Row(
//                         children: [
//                           Checkbox(
//                             value: tasks[index]["done"],
//                             onChanged: (value) {
//                               setState(() {
//                                 tasks[index]["done"] = value!;
//                               });
//                             },
//                           ),
//                           Expanded(
//                             child: Text(
//                               tasks[index]["title"],
//                               style: TextStyle(
//                                 decoration: tasks[index]["done"]
//                                     ? TextDecoration.lineThrough
//                                     : TextDecoration.none,
//                               ),
//                             ),
//                           ),
//                           IconButton(
//                             icon: const Icon(Icons.delete_outline),
//                             onPressed: () {
//                               setState(() {
//                                 tasks.removeAt(index);
//                               });
//                             },
//                           ),
//                         ],
//                       ),
//                     );
//                   },
//                 ),
//               ),
//
//               SizedBox(
//                 width: double.infinity,
//                 child: ElevatedButton(
//                   onPressed: clearCompleted,
//                   child: const Text("Clear Completed"),
//                 ),
//               ),
//             ],
//           ),
//         ),
//         bottomNavigationBar: BottomNavigationBar(
//           items: [
//             BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: "Home"),
//             BottomNavigationBarItem(icon: Icon(Icons.assignment), label: "Tasks"),
//             BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: "Profile"),
//           ],
//         ),
//       ),
//     );
//   }
// }