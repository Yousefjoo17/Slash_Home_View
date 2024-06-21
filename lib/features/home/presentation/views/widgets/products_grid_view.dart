import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashtask/core/widgets/custom_error_widget.dart';
import 'package:slashtask/features/home/data/models/product_type.dart';
import 'package:slashtask/features/home/presentation/view_models/cubit/products_cubit.dart';
import 'package:slashtask/features/home/presentation/views/widgets/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key, required this.productType});
  final ProductType productType;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: BlocBuilder<ProductsCubit, ProductsState>(
        builder: (context, state) {
          if (state is ProductsSuccess) {
            List products;
            switch (productType) {
              case ProductType.bestSeller:
                products = state.bestSellers;
                break;
              case ProductType.newArrival:
                products = state.newArrivals;
                break;
              case ProductType.recommended:
                products = state.recommended;
                break;
              default:
                products = [];
            }
            return GridView.builder(
              itemCount: products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.65,
                crossAxisSpacing: 8,
                mainAxisSpacing: 20,
              ),
              itemBuilder: (context, index) {
                return ProductItem(
                  productModel: products[index],
                );
              },
            );
          } else {
            return const CustomErrorWidget(errMessage: "Error");
          }
        },
      ),
    );
  }
}
