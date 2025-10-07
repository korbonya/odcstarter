import 'package:flutter/material.dart';
import '../models/product.dart';

class ProductTile extends StatelessWidget {
  final Product product;
  final VoidCallback? onTap;
  const ProductTile({super.key, required this.product, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 40),
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Image.network(product.imageUrl!, height: 200,width: 450, fit: BoxFit.cover, alignment: AlignmentGeometry.center,),
                SizedBox(height: 10,),
                Text(product.name, style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),),
                 SizedBox(height: 4,),
                Text('Prix: ${product.price.toString()} GNF', style: TextStyle(
            
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
