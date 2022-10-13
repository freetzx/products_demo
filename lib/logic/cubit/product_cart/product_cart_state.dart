part of 'product_cart_cubit.dart';

@freezed
class ProductCartState with _$ProductCartState {
  const factory ProductCartState({
    @Default([]) List<Product> products,
    @Default({}) Map mapProducts,
    @Default(10.0) double deliveryFee,
    @Default(0.0) double subtotal,
    @Default(0.0) double total,
  }) = _ProductCartInitial;
}
