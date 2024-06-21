import 'package:slashtask/core/utils/json_data.dart';
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
}
