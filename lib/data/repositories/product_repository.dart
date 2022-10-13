import 'package:products_demo/data/http/service_api.dart';
import 'package:products_demo/data/models/product/product.dart';
import 'package:products_demo/data/repositories/product_interface.dart';

class ProductRepository implements IProductRepository {
  final ServiceApi api;

  ProductRepository({required this.api});

  @override
  Future<Product?> getProduct(String sId) async {
    final response = await api.getProduct(sId);

    if (response.statusCode == 200) {
      var product = Product.fromJson(response.data);

      return product;
    } else {
      return null;
    }
  }

  @override
  Future<List<Product>> getProducts() async {
    final response = await api.getProducts();

    var products = Product.fromList(response.data);

    return products;
  }
}
