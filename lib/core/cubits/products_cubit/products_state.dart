part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoaded extends ProductsState {
  final List<ProductEntity> products;

  ProductsLoaded(this.products);
}

class ProductsLoading extends ProductsState {}

class ProductsError extends ProductsState {
  final String message;
  ProductsError(this.message);
}
