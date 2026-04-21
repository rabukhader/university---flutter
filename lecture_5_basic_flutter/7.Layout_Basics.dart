//Flutter builds UI using widgets, and layout widgets help us arrange them on screen.
//
// Layout means: where do I put things on the screen?
// Under each other? Next to each other? Inside a box? On top of each other?
//
// The most important basic layout widgets: Column, Row, Container, Stack
// And we also use: Text, Image, Icon

// Column
// What is Column? The Column widget arranges children vertically.
//
// It puts widgets from top to bottom. Column is like putting books one under another.
//
// Example
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyColumnApp());
// }
//
// class MyColumnApp extends StatelessWidget {
//   const MyColumnApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: const [
//             Text("First"),
//             Text("Second"),
//             Text("Third"),
//           ],
//         ),
//       ),
//     );
//   }
// }

// Explain properties
// children : The widgets inside the Column
//
// mainAxisAlignment : Controls vertical alignment in Column
//
// Examples: start, center, end, spaceAround, spaceBetween, spaceEvenly,
//
// crossAxisAlignment: Controls horizontal alignment in Column
//
// Examples: start, center, end

// In Column, the main direction is vertical.
// So mainAxisAlignment moves things up and down.
// crossAxisAlignment moves things left and right.
//
// Another example with spacing feel
// Column(
//   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   children: const [
//     Text("Name"),
//     Text("Age"),
//     Text("City"),
//   ],
// )


//Row
// What is Row? : The Row widget arranges children horizontally. It puts widgets side by side.
//
// Example
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyRowApp());
// }
//
// class MyRowApp extends StatelessWidget {
//   const MyRowApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Row(
//           mainAxisAlignment: MainAxisAlignment.center,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: const [
//             Icon(Icons.home),
//             SizedBox(width: 20),
//             Icon(Icons.favorite),
//             SizedBox(width: 20),
//             Icon(Icons.person),
//           ],
//         ),
//       ),
//     );
//   }
// }
// Explain properties
//
// In Row:
//
// mainAxisAlignment = horizontal direction
// crossAxisAlignment = vertical direction
// So mainAxisAlignment moves things left and right.
// crossAxisAlignment moves things up and down.
//
// Container
// What is Container? The Container widget is like a box.
//
// It can have:
// width
// height
// color
// padding
// margin
// border
// child inside it
//
// Container is one of the most useful widgets in Flutter.
// Think of it as a box that can hold something and give it shape, size, color, and spacing.
//
// Example
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyContainerApp());
// }
//
// class MyContainerApp extends StatelessWidget {
//   const MyContainerApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Container(
//             width: 200,
//             height: 100,
//             padding: const EdgeInsets.all(16),
//             margin: const EdgeInsets.all(20),
//             alignment: Alignment.center,
//             decoration: BoxDecoration(
//               color: Colors.blue,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: const Text(
//               "Hello",
//               style: TextStyle(color: Colors.white, fontSize: 22),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
// Explain properties
// width and height
//
// Size of the box
//
// padding
//
// Space inside the container between the border and child
//
// margin
//
// Space outside the container around it
//
// alignment
//
// Where to put the child inside the box
//
// decoration
//
// Used for styling
//
// color
// border
// border radius
// How to explain padding vs margin
//
// Padding is inner space.
// Margin is outer space.
//
// Real-life example
//
// Margin is the space outside the house.
// Padding is the space inside the room.
//
// Stack
// What is Stack?
//
// The Stack widget puts widgets on top of each other.
//
// Stack is like layers.
// One widget can be behind, and another can be in front.
//
// Example
// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyStackApp());
// }
//
// class MyStackApp extends StatelessWidget {
//   const MyStackApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Center(
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(
//                 width: 200,
//                 height: 200,
//                 color: Colors.blue,
//               ),
//               Container(
//                 width: 120,
//                 height: 120,
//                 color: Colors.red,
//               ),
//               const Text(
//                 "Stack",
//                 style: TextStyle(color: Colors.white, fontSize: 24),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
// first widget is at the back
// then the next widget comes on top
// then the next one comes on top again
//
// In Stack, widgets are layered like papers on top of each other.
//

// Text : What is Text? Text displays written words on the screen.
//
// Example
// const Text("Hello Students")
//
// Styled example
// const Text(
//   "Hello Students",
//   style: TextStyle(
//     fontSize: 24,
//     color: Colors.blue,
//     fontWeight: FontWeight.bold,
//   ),
// )
//
// Text is one of the simplest and most common widgets in Flutter.
//
// Icon
// What is Icon?
//
// Icon displays a ready-made symbol.
//
// Example
// const Icon(Icons.home)
// Styled example
// const Icon(
//   Icons.favorite,
//   color: Colors.red,
//   size: 40,
// )
//
// Flutter gives us many built-in icons we can use directly.
//
// Image
// What is Image? Image displays a picture.
//
// There are two common types:
//
// image from internet
// image from assets

// Example from internet
// Image.network(
//   "https://flutter.dev/assets/homepage/carousel/slide_1-layer_0-6e32a0ab.png",
//   width: 150,
// )
//
// Better first explanation: asset image
//
// If we want to show an image from our project folder, we put it inside assets and connect it in pubspec.yaml.
//
// Combined Layout Example
//
// This example uses: Column, Row, Container, Text, Icon

// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyLayoutApp());
// }
//
// class MyLayoutApp extends StatelessWidget {
//   const MyLayoutApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(title: const Text("Layout Basics")),
//         body: Center(
//           child: Container(
//             padding: const EdgeInsets.all(16),
//             margin: const EdgeInsets.all(20),
//             decoration: BoxDecoration(
//               color: Colors.grey.shade200,
//               borderRadius: BorderRadius.circular(12),
//             ),
//             child: Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 const Icon(Icons.person, size: 60, color: Colors.blue),
//                 const SizedBox(height: 10),
//                 const Text(
//                   "Rasheed Abu Khader",
//                   style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),
//                 const SizedBox(height: 10),
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: const [
//                     Icon(Icons.email),
//                     SizedBox(width: 8),
//                     Text("example@email.com"),
//                   ],
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
