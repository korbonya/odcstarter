import 'dart:js_interop';

import 'package:flutter/material.dart';
import '../models/product.dart';
import 'product_detail.dart';
import '../widgets/product_tile.dart';

const sampleProducts = [
  {
    'id': '1',
    'name': 'Robe',
    'price': 5000,
    'imageUrl':
        'https://images.unsplash.com/flagged/photo-1585052201332-b8c0ce30972f?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8cm9iZXxlbnwwfHwwfHx8MA%3D%3D'
  },
  {
    'id': '2',
    'name': 'Sac',
    'price': 30000,
    'imageUrl':
        'https://images.unsplash.com/photo-1584917865442-de89df76afd3?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8Mnx8c2FjfGVufDB8fDB8fHww'
  },
  {
    'id': '3',
    'name': 'Montre',
    'price': 100000,
    'imageUrl':
        'https://plus.unsplash.com/premium_photo-1682125779534-76c5debea767?w=600&auto=format&fit=crop&q=60&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d2F0Y2h8ZW58MHx8MHx8fDA%3D'
  },
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
      appBar: AppBar(title:  Text('Notre Catalogue ${products.length}')),
      body:   ListView.builder(
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
