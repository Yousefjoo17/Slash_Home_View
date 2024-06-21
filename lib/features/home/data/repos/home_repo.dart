import 'package:slashtask/features/home/data/models/category_model.dart';
import 'package:slashtask/features/home/data/models/offer_model.dart';
import 'package:slashtask/features/home/data/models/product_model.dart';

abstract class HomeRepo {
  List<ProductModel> getBestSellerProducts();
  List<ProductModel> getNewProducts();
  List<ProductModel> getRecommenedProducts();
  List<CategoryModel> getCategories();
  List<OfferModel> getOffers();
}
