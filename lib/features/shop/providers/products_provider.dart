import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../core/api_service.dart';
import '../models/product.dart';

final apiServiceProvider = Provider((ref) => ApiService());

final productsProvider = FutureProvider<List<Product>>((ref) async {
  final apiService = ref.watch(apiServiceProvider);
  return apiService.fetchProducts();
});
