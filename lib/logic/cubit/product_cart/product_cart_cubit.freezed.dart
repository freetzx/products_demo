// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'product_cart_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ProductCartState {
  List<Product> get products => throw _privateConstructorUsedError;
  Map<dynamic, dynamic> get mapProducts => throw _privateConstructorUsedError;
  double get deliveryFee => throw _privateConstructorUsedError;
  double get subtotal => throw _privateConstructorUsedError;
  double get total => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProductCartStateCopyWith<ProductCartState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProductCartStateCopyWith<$Res> {
  factory $ProductCartStateCopyWith(
          ProductCartState value, $Res Function(ProductCartState) then) =
      _$ProductCartStateCopyWithImpl<$Res>;
  $Res call(
      {List<Product> products,
      Map<dynamic, dynamic> mapProducts,
      double deliveryFee,
      double subtotal,
      double total});
}

/// @nodoc
class _$ProductCartStateCopyWithImpl<$Res>
    implements $ProductCartStateCopyWith<$Res> {
  _$ProductCartStateCopyWithImpl(this._value, this._then);

  final ProductCartState _value;
  // ignore: unused_field
  final $Res Function(ProductCartState) _then;

  @override
  $Res call({
    Object? products = freezed,
    Object? mapProducts = freezed,
    Object? deliveryFee = freezed,
    Object? subtotal = freezed,
    Object? total = freezed,
  }) {
    return _then(_value.copyWith(
      products: products == freezed
          ? _value.products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      mapProducts: mapProducts == freezed
          ? _value.mapProducts
          : mapProducts // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      deliveryFee: deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
abstract class _$$_ProductCartInitialCopyWith<$Res>
    implements $ProductCartStateCopyWith<$Res> {
  factory _$$_ProductCartInitialCopyWith(_$_ProductCartInitial value,
          $Res Function(_$_ProductCartInitial) then) =
      __$$_ProductCartInitialCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<Product> products,
      Map<dynamic, dynamic> mapProducts,
      double deliveryFee,
      double subtotal,
      double total});
}

/// @nodoc
class __$$_ProductCartInitialCopyWithImpl<$Res>
    extends _$ProductCartStateCopyWithImpl<$Res>
    implements _$$_ProductCartInitialCopyWith<$Res> {
  __$$_ProductCartInitialCopyWithImpl(
      _$_ProductCartInitial _value, $Res Function(_$_ProductCartInitial) _then)
      : super(_value, (v) => _then(v as _$_ProductCartInitial));

  @override
  _$_ProductCartInitial get _value => super._value as _$_ProductCartInitial;

  @override
  $Res call({
    Object? products = freezed,
    Object? mapProducts = freezed,
    Object? deliveryFee = freezed,
    Object? subtotal = freezed,
    Object? total = freezed,
  }) {
    return _then(_$_ProductCartInitial(
      products: products == freezed
          ? _value._products
          : products // ignore: cast_nullable_to_non_nullable
              as List<Product>,
      mapProducts: mapProducts == freezed
          ? _value._mapProducts
          : mapProducts // ignore: cast_nullable_to_non_nullable
              as Map<dynamic, dynamic>,
      deliveryFee: deliveryFee == freezed
          ? _value.deliveryFee
          : deliveryFee // ignore: cast_nullable_to_non_nullable
              as double,
      subtotal: subtotal == freezed
          ? _value.subtotal
          : subtotal // ignore: cast_nullable_to_non_nullable
              as double,
      total: total == freezed
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class _$_ProductCartInitial implements _ProductCartInitial {
  const _$_ProductCartInitial(
      {final List<Product> products = const [],
      final Map<dynamic, dynamic> mapProducts = const {},
      this.deliveryFee = 10.0,
      this.subtotal = 0.0,
      this.total = 0.0})
      : _products = products,
        _mapProducts = mapProducts;

  final List<Product> _products;
  @override
  @JsonKey()
  List<Product> get products {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_products);
  }

  final Map<dynamic, dynamic> _mapProducts;
  @override
  @JsonKey()
  Map<dynamic, dynamic> get mapProducts {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_mapProducts);
  }

  @override
  @JsonKey()
  final double deliveryFee;
  @override
  @JsonKey()
  final double subtotal;
  @override
  @JsonKey()
  final double total;

  @override
  String toString() {
    return 'ProductCartState(products: $products, mapProducts: $mapProducts, deliveryFee: $deliveryFee, subtotal: $subtotal, total: $total)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ProductCartInitial &&
            const DeepCollectionEquality().equals(other._products, _products) &&
            const DeepCollectionEquality()
                .equals(other._mapProducts, _mapProducts) &&
            const DeepCollectionEquality()
                .equals(other.deliveryFee, deliveryFee) &&
            const DeepCollectionEquality().equals(other.subtotal, subtotal) &&
            const DeepCollectionEquality().equals(other.total, total));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_products),
      const DeepCollectionEquality().hash(_mapProducts),
      const DeepCollectionEquality().hash(deliveryFee),
      const DeepCollectionEquality().hash(subtotal),
      const DeepCollectionEquality().hash(total));

  @JsonKey(ignore: true)
  @override
  _$$_ProductCartInitialCopyWith<_$_ProductCartInitial> get copyWith =>
      __$$_ProductCartInitialCopyWithImpl<_$_ProductCartInitial>(
          this, _$identity);
}

abstract class _ProductCartInitial implements ProductCartState {
  const factory _ProductCartInitial(
      {final List<Product> products,
      final Map<dynamic, dynamic> mapProducts,
      final double deliveryFee,
      final double subtotal,
      final double total}) = _$_ProductCartInitial;

  @override
  List<Product> get products;
  @override
  Map<dynamic, dynamic> get mapProducts;
  @override
  double get deliveryFee;
  @override
  double get subtotal;
  @override
  double get total;
  @override
  @JsonKey(ignore: true)
  _$$_ProductCartInitialCopyWith<_$_ProductCartInitial> get copyWith =>
      throw _privateConstructorUsedError;
}
