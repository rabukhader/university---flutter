import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(const MyApp());
}

const String productsJson = '''
[
  {"id": 1, "name": "Laptop", "price": 2500, "category": "Electronics", "description": "A device for study and work."},
  {"id": 2, "name": "Phone", "price": 1500, "category": "Electronics", "description": "A smart mobile phone."},
  {"id": 3, "name": "Headphones", "price": 300, "category": "Accessories", "description": "Useful for listening to music."},
  {"id": 4, "name": "Notebook", "price": 20, "category": "Study", "description": "For writing notes and tasks."}
]
''';

class Product {
  final int id;
  final String name;
  final int price;
  final String category;
  final String description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    required this.category,
    required this.description,
  });

  factory Product.fromJson(Map<String, dynamic> json) {
    return Product(
      id: json['id'],
      name: json['name'],
      price: json['price'],
      category: json['category'],
      description: json['description'],
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product Catalog',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.blue),
      home: const ProductListScreen(),
    );
  }
}

class ProductListScreen extends StatefulWidget {
  const ProductListScreen({super.key});

  @override
  State<ProductListScreen> createState() => _ProductListScreenState();
}

class _ProductListScreenState extends State<ProductListScreen> {
  late List<Product> products;
  List<int> favoriteIds = [];

  @override
  void initState() {
    super.initState();
    final List<dynamic> data = jsonDecode(productsJson);
    products = data.map((item) => Product.fromJson(item)).toList();
    loadFavorites();
  }

  Future<void> loadFavorites() async {
    final prefs = await SharedPreferences.getInstance();
    final ids = prefs.getStringList('favoriteIds') ?? [];

    setState(() {
      favoriteIds = ids.map(int.parse).toList();
    });
  }

  Future<void> toggleFavorite(int productId) async {
    final prefs = await SharedPreferences.getInstance();

    setState(() {
      if (favoriteIds.contains(productId)) {
        favoriteIds.remove(productId);
      } else {
        favoriteIds.add(productId);
      }
    });

    await prefs.setStringList(
      'favoriteIds',
      favoriteIds.map((id) => id.toString()).toList(),
    );
  }

  void openDetails(Product product) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ProductDetailsScreen(
          product: product,
          isFavorite: favoriteIds.contains(product.id),
          onToggleFavorite: () => toggleFavorite(product.id),
        ),
      ),
    ).then((_) => loadFavorites());
  }

  void openFavorites() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => FavoritesScreen(
          products: products.where((p) => favoriteIds.contains(p.id)).toList(),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Catalog'),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite),
            onPressed: openFavorites,
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (_, index) {
          final product = products[index];
          final isFavorite = favoriteIds.contains(product.id);

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: CircleAvatar(
                child: Text(product.name[0]),
              ),
              title: Text(product.name),
              subtitle: Text('${product.category} - ${product.price} NIS'),
              trailing: Icon(
                isFavorite ? Icons.favorite : Icons.favorite_border,
                color: isFavorite ? Colors.red : Colors.grey,
              ),
              onTap: () => openDetails(product),
            ),
          );
        },
      ),
    );
  }
}

class ProductDetailsScreen extends StatelessWidget {
  final Product product;
  final bool isFavorite;
  final VoidCallback onToggleFavorite;

  const ProductDetailsScreen({
    super.key,
    required this.product,
    required this.isFavorite,
    required this.onToggleFavorite,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Details'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.name,
                    style: const TextStyle(
                        fontSize: 28, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                Text('Category: ${product.category}',
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text('Price: ${product.price} NIS',
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 10),
                Text(product.description,
                    style: const TextStyle(fontSize: 18)),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: onToggleFavorite,
                  icon: Icon(
                    isFavorite ? Icons.favorite : Icons.favorite_border,
                  ),
                  label: Text(
                    isFavorite ? 'Remove from Favorites' : 'Add to Favorites',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class FavoritesScreen extends StatelessWidget {
  final List<Product> products;

  const FavoritesScreen({super.key, required this.products});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Favorite Products'),
      ),
      body: products.isEmpty
          ? const Center(
        child: Text(
          'No favorites yet',
          style: TextStyle(fontSize: 20),
        ),
      )
          : ListView.builder(
        itemCount: products.length,
        itemBuilder: (_, index) {
          final product = products[index];
          return ListTile(
            title: Text(product.name),
            subtitle: Text('${product.price} NIS'),
          );
        },
      ),
    );
  }
}