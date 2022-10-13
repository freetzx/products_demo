import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_demo/data/models/product/product.dart';
import 'package:products_demo/logic/cubit/product_cart/product_cart_cubit.dart';
import 'package:products_demo/presentation/screens/view_product/view_product.dart';

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, ViewProductScreen.route(product));
      },
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.2),
              spreadRadius: 3.0,
              blurRadius: 5.0,
            ),
          ],
        ),
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: product.sId,
              child: SizedBox(
                height: 100,
                width: 100,
                child: Image.network(
                  product.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            const SizedBox(height: 20),
            Text(
              product.name,
              style: const TextStyle(
                fontSize: 12,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            const SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.orange,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    context.read<ProductCartCubit>().addItem(product);
                  },
                  child: const Icon(
                    Icons.add_shopping_cart_rounded,
                    size: 20,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
