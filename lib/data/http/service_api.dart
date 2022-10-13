import 'package:dio/dio.dart';
import 'package:products_demo/core/constants/constants.dart';

class ServiceApi {
  final dio = Dio();

  Future<Response> getProducts() async {
    final response = await dio.get('$baseUrl/products');

    return response;
  }

  Future<Response> getProduct(String sId) async {
    final response = await dio.get('$baseUrl/products/$sId');

    return response;
  }
}
