import 'package:flutter/material.dart';

class Order extends StatelessWidget {
  const Order({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Commande')),
      body: Column(children: [
        TextField(
          decoration: InputDecoration(labelText: 'Nom'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Prenom'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Email'),
        ),
        TextField(
          decoration: InputDecoration(labelText: 'Téléphone'),
        ),  
      ],)
    );
  }
}
