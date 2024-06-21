import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/core/widgets/custom_error_widget.dart';
import 'package:slashtask/features/home/data/models/product_type.dart';
import 'package:slashtask/features/home/presentation/view_models/products_cubit/products_cubit.dart';
import 'package:slashtask/features/home/presentation/views/widgets/product_item.dart';

class ProductListView extends StatelessWidget {
  const ProductListView({Key? key, required this.productType})
      : super(key: key);
  final ProductType productType;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
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
          return SizedBox(
            height: getResponisveSize(context, size: 130),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: products.length,
              itemBuilder: (context, index) {
                return ProductItem(
                  productModel: products[index],
                );
              },
            ),
          );
        } else {
          return const CustomErrorWidget(errMessage: "Error");
        }
      },
    );
  }
}
