import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_demo/data/models/rating/rating.dart';
import 'package:products_demo/domain/entities/product_entity.dart';

part 'product.freezed.dart';
part 'product.g.dart';

@freezed
class Product with _$Product implements ProductEntity {
  const factory Product({
    @JsonKey(name: '_id') required String sId,
    required String name,
    required double price,
    required String description,
    required String category,
    required String image,
    required Rating rating,
  }) = _Product;

  factory Product.fromJson(Map<String, Object?> json) =>
      _$ProductFromJson(json);

  static List<Product> fromList(List payload) {
    var products = <Product>[];

    if (payload.isEmpty) return products;

    for (var element in payload) {
      products.add(Product.fromJson(element));
    }

    return products;
  }
}
