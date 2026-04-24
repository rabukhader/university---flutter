// What is Container? The Container widget is like a box.
//
// It can have: width, height, color, padding, margin, border, child inside it
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
//             // width:
//             // Sets the width of the container
//             // Here, the box width is 200 pixels
//             width: 200,
//
//             // height:
//             // Sets the height of the container
//             // Here, the box height is 100 pixels
//             height: 100,
//
//             // padding:
//             // Adds space INSIDE the container
//             // between the child and the edges of the box
//             // Here, 16 pixels of space are added from all sides
//             padding: const EdgeInsets.all(16),
//
//             // margin:
//             // Adds space OUTSIDE the container
//             // between this container and other widgets around it
//             // Here, 20 pixels of outer space are added from all sides
//             margin: const EdgeInsets.all(20),
//
//             // alignment:
//             // Controls the position of the child inside the container
//             // Here, the text is placed in the center
//             alignment: Alignment.center,
//
//             // decoration:
//             // Used to style the container
//             // It can include:
//             // - background color
//             // - border
//             // - border radius
//             // - shadow
//             decoration: BoxDecoration(
//               // color:
//               // Sets the background color of the container
//               color: Colors.blue,
//
//               // borderRadius:
//               // Makes the corners rounded
//               // Here, the corners are rounded by 12 pixels
//               borderRadius: BorderRadius.circular(12),
//             ),
//
//             // child:
//             // The widget placed inside the container
//             // Here, the child is a Text widget
//             child: const Text(
//               "Hello",
//
//               // style:
//               // Used to style the text
//               // color: text color
//               // fontSize: size of the text
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 22,
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//width: Controls how wide the box is.
//
// height: Controls how tall the box is.
//
// padding: Space inside the box.
//
// margin: Space outside the box.
//
// alignment: Where the child is placed inside the box.
//
// decoration: Used to style the box, like color and rounded corners.
//
// child: The widget inside the box, like text, icon, or image.
//
// Padding = space inside the box
//
// Margin = space outside the box
