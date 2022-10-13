import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_demo/logic/cubit/product_cart/product_cart_cubit.dart';

class CartSummaryWidget extends StatelessWidget {
  const CartSummaryWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      decoration: BoxDecoration(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(25),
          topRight: Radius.circular(25),
        ),
        color: Colors.grey.shade200,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
      child: BlocBuilder<ProductCartCubit, ProductCartState>(
        builder: (context, state) {
          return Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              _buildTile(
                leading: 'SUBTOTAL',
                title: state.subtotal.toStringAsFixed(2),
              ),
              _buildTile(
                leading: 'DELIVERY FEE',
                title: state.deliveryFee.toStringAsFixed(2),
              ),
              _buildTile(
                leading: 'TOTAL',
                title: state.total.toStringAsFixed(2),
                fontSize: 16,
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                onPressed: state.products.isEmpty ? null : () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.grey.shade900,
                  fixedSize: const Size(double.infinity, 50),
                ),
                child: const Text('CHECK OUT'),
              ),
            ],
          );
        },
      ),
    );
  }

  Row _buildTile({
    required String leading,
    required String title,
    double fontSize = 13,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          leading,
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Text(
          '\$$title',
          style: TextStyle(
            color: Colors.black,
            fontSize: fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
