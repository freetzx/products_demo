import 'package:products_demo/data/models/rating/rating.dart';

class ProductEntity {
  final String sId;
  final String name;
  final double price;
  final String description;
  final String category;
  final String image;
  final Rating rating;

  ProductEntity({
    required this.sId,
    required this.name,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
    required this.rating,
  });
}
