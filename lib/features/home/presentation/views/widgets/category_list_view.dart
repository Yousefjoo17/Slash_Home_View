import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/core/widgets/custom_error_widget.dart';
import 'package:slashtask/features/home/presentation/view_models/products_cubit/products_cubit.dart';
import 'package:slashtask/features/home/presentation/views/widgets/categoery_item.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return SizedBox(
            height: getResponisveSize(context, size: 34 * 2 * 1.8),
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: state.categories.length,
              itemBuilder: (context, index) {
                return CategoeryItem(
                  categoryModel: state.categories[index],
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
