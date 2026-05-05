//import 'package:flutter/material.dart';
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
//       home: ProductListScreen(),
//     );
//   }
// }
//
// class ProductListScreen extends StatelessWidget {
//   const ProductListScreen({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     List<Map<String, dynamic>> products = [
//       {"name": "Laptop", "price": 2500},
//       {"name": "Phone", "price": 1500},
//       {"name": "Headphones", "price": 300},
//     ];
//
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Products"),
//       ),
//       body: ListView.builder(
//         itemCount: products.length,
//         itemBuilder: (context, index) {
//           return ListTile(
//             title: Text(products[index]["name"]),
//             subtitle: Text("Price: ${products[index]["price"]}"),
//             trailing: const Icon(Icons.arrow_forward_ios),
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (context) => ProductDetailsScreen(
//                     name: products[index]["name"],
//                     price: products[index]["price"],
//                   ),
//                 ),
//               );
//             },
//           );
//         },
//       ),
//     );
//   }
// }
//
// class ProductDetailsScreen extends StatelessWidget {
//   final String name;
//   final int price;
//
//   const ProductDetailsScreen({
//     super.key,
//     required this.name,
//     required this.price,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Product Details"),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text("Product: $name", style: const TextStyle(fontSize: 24)),
//             const SizedBox(height: 10),
//             Text("Price: $price", style: const TextStyle(fontSize: 24)),
//           ],
//         ),
//       ),
//     );
//   }
// }