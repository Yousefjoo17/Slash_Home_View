import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:slashtask/features/home/data/models/category_model.dart';
import 'package:slashtask/features/home/data/models/offer_model.dart';
import 'package:slashtask/features/home/data/models/product_model.dart';
import 'package:slashtask/features/home/data/repos/home_repo.dart';
import 'package:slashtask/features/home/data/repos/home_repo_impl.dart';

part 'product_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit() : super(ProductsInitial());
  HomeRepo homeRepo = HomeRepoImpl();
  late List<ProductModel> bestSellers;
  late List<ProductModel> newArrivals;
  late List<ProductModel> recommended;
  late List<CategoryModel> categories;
  late List<OfferModel> offers;
  void getProducts() {
    bestSellers = homeRepo.fetchBestSellerProducts();
    newArrivals = homeRepo.fetchNewProducts();
    recommended = homeRepo.fetchRecommenedProducts();
    categories = homeRepo.fetchCategories();
    offers = homeRepo.fetchOffers();
    emit(ProductsSuccess(
        newArrivals: newArrivals,
        recommended: recommended,
        categories: categories,
        bestSellers: bestSellers,
        offers: offers));
  }
}
