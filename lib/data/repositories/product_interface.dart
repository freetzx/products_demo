import 'package:products_demo/data/models/product/product.dart';

abstract class IProductRepository {
  Future<Product?> getProduct(String sId);
  Future<List<Product>> getProducts();
}
