import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail.dart';
import '../widgets/product_tile.dart';

const sampleProducts = [
  {'id': '1', 'name': 'Chaussures', 'price': 50},
  {'id': '2', 'name': 'Sac', 'price': 30},
  {'id': '3', 'name': 'Montre', 'price': 100},
];

class ProductList extends StatelessWidget {
  const ProductList({super.key});

  List<Product> parseProducts() {
    return sampleProducts.map((m) => Product.fromMap(m)).toList();
  }

  @override
  Widget build(BuildContext context) {
    final products = parseProducts();

    return Scaffold(
      appBar: AppBar(title: const Text('Catalogue')),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {
          final p = products[index];
          return ProductTile(
            product: p,
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ProductDetail(product: p),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Example: show counter value from Riverpod provider
          // This is a placeholder action.
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Action flottante')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
