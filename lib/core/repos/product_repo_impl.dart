import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/core/entities/product_entity.dart';
import 'package:ecommerce_app/core/errors/failure.dart';
import 'package:ecommerce_app/core/models/product_model.dart';
import 'package:ecommerce_app/core/repos/product_repo.dart';
import 'package:ecommerce_app/core/services/data_base_service.dart';
import 'package:ecommerce_app/core/utils/backend_const.dart';

class ProductRepoImpl implements ProductRepo {
  DataBaseService dataBaseService;

  ProductRepoImpl(this.dataBaseService);
  @override
  Future<Either<Failure, List<ProductEntity>>> getProducts() async {
    try {
      var data = await dataBaseService.getData(path: BackendConst.products)
          as List<Map<String, dynamic>>;
      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toProductEntity()).toList();

      return right(products);
    } catch (e) {
      return left(
        ServerFailure(
            'حدث خطأ ما الرجاء المحاولة في وقت لاحق.productrepoimpl'),
      );
    }
  }

  @override
  Future<Either<Failure, List<ProductEntity>>> getBestSellingProducts() async {
    try {
      var data = await dataBaseService.getData(
        path: BackendConst.products,
        query: {
          'limit': 10,
          'orderBy': 'sellingCount',
          'descending': true,
        },
      ) as List<Map<String, dynamic>>;
      List<ProductEntity> products =
          data.map((e) => ProductModel.fromJson(e).toProductEntity()).toList();

      return right(products);
    } catch (e) {
      return left(
        ServerFailure(
            'حدث خطأ ما الرجاء المحاولة في وقت لاحق.productrepoimpl'),
      );
    }
  }
}
