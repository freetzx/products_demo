import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:products_demo/data/repositories/product_repository.dart';
import 'package:products_demo/logic/cubit/product_list/product_list_cubit.dart';
import 'package:products_demo/presentation/screens/common_widgets/shopping_cart.dart';
import 'package:products_demo/presentation/screens/product_list/widgets/exit_app.dart';
import 'package:products_demo/presentation/screens/product_list/widgets/product_card.dart';

class ProductListScreen extends StatelessWidget {
  const ProductListScreen({super.key});

  static String routeName = '/products';

  static Route<dynamic> route() {
    return MaterialPageRoute(
      builder: (context) {
        return BlocProvider(
          create: (context) => ProductListCubit(
            repository: context.read<ProductRepository>(),
          )..loadProducts(),
          child: const ProductListScreen(),
        );
      },
      settings: RouteSettings(name: routeName),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        showModalBottomSheet(
          context: context,
          builder: (context) {
            return const ExitApp();
          },
        );
        return false;
      },
      child: Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: const Text('Products'),
          actions: const [
            ShoppingCart(),
          ],
        ),
        body: BlocBuilder<ProductListCubit, ProductListState>(
          builder: (context, state) {
            return state.when(
              loading: () {
                return Center(
                  child: CircularProgressIndicator(color: Colors.grey.shade900),
                );
              },
              loaded: (products) {
                return GridView.builder(
                  padding: const EdgeInsets.symmetric(
                    vertical: 10,
                    horizontal: 10,
                  ),
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 230,
                    childAspectRatio: 1,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    mainAxisExtent: 220,
                  ),
                  physics: const PageScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    var product = products[index];
                    return ProductCard(product: product);
                  },
                );
              },
              error: (error) {
                return Center(child: Text(error));
              },
            );
          },
        ),
      ),
    );
  }
}
