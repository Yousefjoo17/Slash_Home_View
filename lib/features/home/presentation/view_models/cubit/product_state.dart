part of 'products_cubit.dart';

@immutable
sealed class ProductsState {}

final class ProductsInitial extends ProductsState {}

final class ProductsLoading extends ProductsState {}

final class ProductsFailure extends ProductsState {}

final class ProductsSuccess extends ProductsState {
  final List<ProductModel> bestSellers;
  final List<ProductModel> newArrivals;
  final List<ProductModel> recommended;
  final List<CategoryModel> categories;
  final List<OfferModel> offers;

  ProductsSuccess({
    required this.newArrivals,
    required this.recommended,
    required this.categories,
    required this.bestSellers,
    required this.offers,
  });
}
