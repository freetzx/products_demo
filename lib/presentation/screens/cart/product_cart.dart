import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_demo/logic/cubit/product_cart/product_cart_cubit.dart';
import 'package:products_demo/presentation/screens/cart/widgets/cart_summary.dart';

import 'widgets/product_cart_card.dart';

class ProductCartScreen extends StatelessWidget {
  const ProductCartScreen({super.key});

  static String routeName = '/cart';

  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) {
        return const ProductCartScreen();
      },
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cart'),
      ),
      body: BlocBuilder<ProductCartCubit, ProductCartState>(
        builder: (context, state) {
          return Column(
            children: [
              Expanded(
                child: state.products.isEmpty
                    ? Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          Icon(Icons.shopping_cart, size: 35),
                          SizedBox(height: 15),
                          Text('Add some product to your Cart'),
                        ],
                      )
                    : ListView.builder(
                        padding: const EdgeInsets.all(10),
                        itemCount: state.mapProducts.keys.length,
                        itemBuilder: (_, index) {
                          var product = state.mapProducts.keys.elementAt(index);
                          var quantity =
                              state.mapProducts.values.elementAt(index);
                          return ProductCartCard(
                            product: product,
                            quantity: quantity,
                          );
                        },
                      ),
              ),
              const CartSummaryWidget(),
            ],
          );
        },
      ),
    );
  }
}
