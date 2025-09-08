class Product {
  final String id;
  final String name;
  final double price;
  final String? imageUrl;
  final String? description;

  Product({
    required this.id,
    required this.name,
    required this.price,
    this.imageUrl,
    this.description,
  });

  factory Product.fromMap(Map<String, dynamic> m) => Product(
    id: m['id'].toString(),
    name: m['name'] ?? '',
    price: (m['price'] is num) ? (m['price'] as num).toDouble() : double.tryParse(m['price']?.toString() ?? '0') ?? 0,
    imageUrl: m['imageUrl'],
    description: m['description'],
  );

  Map<String, dynamic> toMap() => {
    'id': id,
    'name': name,
    'price': price,
    'imageUrl': imageUrl,
    'description': description,
  };
}
