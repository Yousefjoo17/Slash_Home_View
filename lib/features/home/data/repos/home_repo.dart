import 'package:slashtask/features/home/data/models/product_model.dart';

abstract class HomeRepo {
  List<ProductModel> getBestSellerProducts();
  List<ProductModel> getNewProducts();
  List<ProductModel> getRecommenedProducts();
}
