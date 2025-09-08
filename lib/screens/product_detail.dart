import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductDetail extends StatelessWidget {
  final Product product;
  const ProductDetail({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (product.imageUrl != null)
              Center(child: Image.network(product.imageUrl!)),
            Text(product.name, style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text('Prix: \${product.price.toStringAsFixed(2)}€', style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),
            Text(product.description ?? 'Aucune description', style: Theme.of(context).textTheme.bodyMedium),
          ],
        ),
      ),
    );
  }
}
