import 'package:slashtask/features/home/data/models/category_model.dart';
import 'package:slashtask/features/home/data/models/offer_model.dart';
import 'package:slashtask/features/home/data/models/product_model.dart';

abstract class HomeRepo {
  List<ProductModel> fetchBestSellerProducts();
  List<ProductModel> fetchNewProducts();
  List<ProductModel> fetchRecommenedProducts();
  List<CategoryModel> fetchCategories();
  List<OfferModel> fetchOffers();
}
