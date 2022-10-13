import 'package:flutter/material.dart';
import 'package:products_demo/data/models/product/product.dart';
import 'package:products_demo/presentation/screens/screens.dart';

class AppRouter {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/products':
        return ProductListScreen.route();
      case '/product':
        return ViewProductScreen.route(settings.arguments as Product);
      case '/cart':
        return ProductCartScreen.route();
      default:
        return MaterialPageRoute(
          builder: (context) {
            return Scaffold(
              body: Center(
                child: Text('No route defined for ${settings.name}'),
              ),
            );
          },
        );
    }
  }
}
