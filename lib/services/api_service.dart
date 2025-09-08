import 'package:dio/dio.dart';
import '../models/product.dart';

class ApiService {
  final Dio dio;
  ApiService([Dio? d]) : dio = d ?? Dio();

  // Example: fetch remote list (here returns local sample)
  Future<List<Product>> fetchProducts() async {
    // In real use, call an API:
    // final res = await dio.get('https://your-api.example.com/products');
    // final list = (res.data as List).map((e) => Product.fromMap(e)).toList();
    // return list;

    // Simulated network delay + sample data
    await Future.delayed(const Duration(milliseconds: 500));
    final sample = [
      {'id': '1', 'name': 'Chaussures (remote)', 'price': 60},
      {'id': '2', 'name': 'Sac (remote)', 'price': 35},
    ];
    return sample.map((m) => Product.fromMap(m)).toList();
  }
}
