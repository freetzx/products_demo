import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:products_demo/data/models/product/product.dart';
import 'package:products_demo/data/repositories/product_interface.dart';

part 'product_list_state.dart';
part 'product_list_cubit.freezed.dart';

class ProductListCubit extends Cubit<ProductListState> {
  final IProductRepository repository;

  ProductListCubit({required this.repository})
      : super(const ProductListState.loading());

  Future<void> loadProducts() async {
    try {
      final products = await repository.getProducts();

      emit.call(ProductListState.loaded(products));
    } catch (e) {
      emit.call(ProductListState.error(e.toString()));
    }
  }
}
