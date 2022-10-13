import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_demo/data/models/product/product.dart';

part 'product_cart_state.dart';
part 'product_cart_cubit.freezed.dart';

class ProductCartCubit extends Cubit<ProductCartState> {
  ProductCartCubit() : super(const ProductCartState());

  void updateCart(List<Product> products) {
    emit.call(state.copyWith(
      mapProducts: mapProducts(products),
      subtotal: subtotal(products),
      total: total(products),
      products: products,
    ));
  }

  void addItem(Product item) {
    updateCart(List.from(state.products)..add(item));
  }

  void decreaseItem(Product item) {
    updateCart(List.from(state.products)..remove(item));
  }

  void removeItem(Product item) {
    updateCart(
      List.from(state.products)
        ..removeWhere(
          (element) => element == item,
        ),
    );
  }

  void clear() {
    updateCart(List.from(state.products)..clear());
  }

  Map mapProducts(List<Product> products) {
    var quantity = {};
    for (var product in products) {
      if (!quantity.containsKey(product)) {
        quantity[product] = 1;
      } else {
        quantity[product] += 1;
      }
    }
    return quantity;
  }

  double subtotal(List<Product> products) {
    return products
        .map((e) => e.price)
        .fold(0, (price1, price2) => price1 + price2);
  }

  double total(List<Product> products) {
    return products
        .map((e) => e.price)
        .fold(state.deliveryFee, (price1, price2) => price1 + price2);
  }
}
