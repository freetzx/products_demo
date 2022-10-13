import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_demo/data/models/product/product.dart';
import 'package:products_demo/logic/cubit/product_cart/product_cart_cubit.dart';

class ProductCartCard extends StatelessWidget {
  const ProductCartCard({
    Key? key,
    required this.product,
    required this.quantity,
  }) : super(key: key);

  final Product product;
  final int quantity;

  @override
  Widget build(BuildContext context) {
    final cart = context.read<ProductCartCubit>();

    return Container(
      height: 150,
      width: double.infinity,
      margin: const EdgeInsets.all(5),
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
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SizedBox(
            height: 80,
            width: 80,
            child: Image.network(
              product.image,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: SizedBox(
                  width: 100,
                  child: Text(
                    product.name,
                    style: const TextStyle(
                      fontSize: 12,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 20,
                width: 100,
                child: Text(
                  '\$${product.price.toStringAsFixed(2)}',
                  style: const TextStyle(
                    fontSize: 16,
                  ),
                ),
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.add_circle),
                    onPressed: () {
                      cart.addItem(product);
                    },
                  ),
                  BlocBuilder<ProductCartCubit, ProductCartState>(
                    builder: (context, state) {
                      return Text(
                        quantity.toString(),
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      );
                    },
                  ),
                  IconButton(
                    onPressed: () {
                      cart.decreaseItem(product);
                    },
                    icon: const Icon(
                      Icons.remove_circle,
                    ),
                  ),
                ],
              ),
              IconButton(
                onPressed: () {
                  cart.removeItem(product);
                },
                icon: const Icon(Icons.delete_rounded),
                color: Colors.red,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
