import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;
  const ProductTile({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(child: Icon(Icons.shopping_bag)),
      title: Text(product.name),
      subtitle: Text('Prix: \${product.price.toStringAsFixed(2)}€'),
      onTap: onTap,
    );
  }
}
