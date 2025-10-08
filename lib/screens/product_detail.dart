import 'package:flutter/material.dart';
import '../models/product.dart';
import './order.dart';

class ProductDetail extends StatefulWidget {
  final Product product;
  const ProductDetail({super.key, required this.product});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  int quantity = 1;

  void increment() {
    setState(() {
      quantity++;
    });
  }

  void decrement() {
    if (quantity > 1) {
      setState(() {
        quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.product.name)),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (widget.product.imageUrl != null)
              Center(
                  child: Image.network(widget.product.imageUrl!,
                      height: 300,
                      width: double.infinity,
                      fit: BoxFit.contain)),
            Text(widget.product.name,
                style: Theme.of(context).textTheme.headlineSmall),
            const SizedBox(height: 8),
            Text('Prix: \${product.price.toStringAsFixed(2)}€',
                style: Theme.of(context).textTheme.titleMedium),
            const SizedBox(height: 16),
            Text(widget.product.description ?? 'Aucune description',
                style: Theme.of(context).textTheme.bodyMedium),
            const SizedBox(height: 16),
            Text("Quantité"),
            SizedBox(
              width: 10,
            ),
            Row(
              children: [
                ElevatedButton.icon(
                    onPressed: decrement, label: Icon(Icons.remove)),
                SizedBox(
                  width: 10,
                ),
                Text("$quantity"),
                SizedBox(
                  width: 10,
                ),
                ElevatedButton.icon(
                    onPressed: increment, label: Icon(Icons.add)),
              ],
            ),
            ElevatedButton(
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => Order())),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Acheter maintenant'),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(Icons.shopping_cart),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            )
          ],
        ),
      ),
    );
  }
}
