import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/core/repos/product_repo.dart';
import 'package:meta/meta.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.productRepo) : super(ProductsInitial());
  final ProductRepo productRepo;
  int productsLength = 0;
  Future<void> getProducts() async {
    emit(ProductsLoading());
    var result = await productRepo.getProducts();
    result.fold(
      (failure) => emit(ProductsError(failure.message)),
      (products) {
        productsLength = products.length;
        emit(ProductsLoaded(products));
      },
    );
  }

  Future<void> getBestSellingProducts() async {
    emit(ProductsLoading());
    var result = await productRepo.getBestSellingProducts();
    result.fold(
      (failure) => emit(ProductsError(failure.message)),
      (products) => emit(ProductsLoaded(products)),
    );
  }
}
