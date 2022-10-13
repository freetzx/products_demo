import 'package:badges/badges.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_demo/logic/cubit/product_cart/product_cart_cubit.dart';
import 'package:products_demo/presentation/screens/cart/product_cart.dart';

class ShoppingCart extends StatelessWidget {
  final Color iconColor;

  const ShoppingCart({super.key, this.iconColor = Colors.white});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductCartCubit, ProductCartState>(
      builder: (context, state) {
        return Badge(
          badgeContent: Text(state.products.length.toString()),
          position: BadgePosition.topStart(top: 5, start: 5),
          child: IconButton(
            onPressed: () {
              Navigator.push(context, ProductCartScreen.route());
            },
            icon: const Icon(Icons.shopping_bag_rounded),
            color: iconColor,
          ),
        );
      },
    );
  }
}
