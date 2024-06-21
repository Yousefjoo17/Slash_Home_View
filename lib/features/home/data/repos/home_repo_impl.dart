import 'package:slashtask/core/utils/json_data.dart';
import 'package:slashtask/features/home/data/models/category_model.dart';
import 'package:slashtask/features/home/data/models/offer_model.dart';
import 'package:slashtask/features/home/data/models/product_model.dart';
import 'package:slashtask/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  List<ProductModel> getBestSellerProducts() {
    List<ProductModel> bestSeller = [];
    for (var i = 0; i < jsonData["bestSelling"]!.length; i++) {
      bestSeller.add(ProductModel.fromJson(jsonData["bestSelling"]![i]));
    }
    return bestSeller;
  }

  @override
  List<ProductModel> getNewProducts() {
    List<ProductModel> newArrival = [];
    for (var i = 0; i < jsonData["newArrival"]!.length; i++) {
      newArrival.add(ProductModel.fromJson(jsonData["newArrival"]![i]));
    }
    return newArrival;
  }

  @override
  List<ProductModel> getRecommenedProducts() {
    List<ProductModel> recommendedForYou = [];
    for (var i = 0; i < jsonData["recommendedForYou"]!.length; i++) {
      recommendedForYou
          .add(ProductModel.fromJson(jsonData["recommendedForYou"]![i]));
    }
    return recommendedForYou;
  }

  @override
  List<CategoryModel> getCategories() {
    List<CategoryModel> categories = [];
    for (var i = 0; i < jsonData["categories"]!.length; i++) {
      categories.add(CategoryModel.fromJson(jsonData["categories"]![i]));
    }
    return categories;
  }

  @override
  List<OfferModel> getOffers() {
    List<OfferModel> offers = [];
    for (var i = 0; i < jsonData["offers"]!.length; i++) {
      offers.add(OfferModel.fromJson(jsonData["offers"]![i]));
    }
    return offers;
  }
}
