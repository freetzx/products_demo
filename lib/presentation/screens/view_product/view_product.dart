import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_demo/data/models/product/product.dart';
import 'package:products_demo/logic/cubit/product_cart/product_cart_cubit.dart';
import 'package:products_demo/presentation/screens/common_widgets/shopping_cart.dart';

class ViewProductScreen extends StatelessWidget {
  const ViewProductScreen({super.key, required this.product});

  static String routeName = '/product';

  final Product product;

  static Route<dynamic> route(Product product) {
    return MaterialPageRoute(
      builder: (context) {
        return ViewProductScreen(product: product);
      },
      settings: RouteSettings(name: routeName, arguments: product),
    );
  }

  @override
  Widget build(BuildContext context) {
    final cart = context.read<ProductCartCubit>();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Colors.grey.shade800,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: [
          ShoppingCart(iconColor: Colors.grey.shade900),
        ],
      ),
      extendBodyBehindAppBar: true,
      body: Column(
        children: [
          Expanded(
            child: Hero(
              tag: product.sId,
              child: Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.network(
                  product.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),
          ),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15),
                  topRight: Radius.circular(15),
                ),
              ),
              child: ListView(
                padding: const EdgeInsets.all(15),
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Text(
                          product.name,
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.star,
                        color: Colors.yellow,
                        size: 25,
                      ),
                      const SizedBox(width: 5),
                      Text(
                        product.rating.rate.toStringAsFixed(1),
                        style: const TextStyle(
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        ' (${product.rating.count}) ',
                        style: const TextStyle(
                          fontSize: 18,
                          color: Colors.grey,
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 15),
                    child: Text(
                      product.description,
                      style: const TextStyle(
                        fontSize: 13,
                      ),
                    ),
                  ),
                  BlocBuilder<ProductCartCubit, ProductCartState>(
                    builder: (context, state) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          IconButton(
                            onPressed: state.products
                                    .where((e) => e == product)
                                    .isEmpty
                                ? null
                                : () {
                                    cart.decreaseItem(product);
                                  },
                            icon: const Icon(
                              Icons.remove_circle_rounded,
                            ),
                            iconSize: 35,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              state.products
                                  .where((e) => e == product)
                                  .length
                                  .toString(),
                              style: TextStyle(
                                color: Colors.grey.shade900,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                          ),
                          IconButton(
                            onPressed: () {
                              cart.addItem(product);
                            },
                            icon: const Icon(
                              Icons.add_circle_rounded,
                            ),
                            iconSize: 35,
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
