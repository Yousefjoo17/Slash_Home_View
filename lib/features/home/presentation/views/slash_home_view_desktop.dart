import 'package:flutter/material.dart';
import 'package:slashtask/features/home/data/models/product_type.dart';
import 'package:slashtask/features/home/presentation/views/widgets/category_list_view.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_fearures_bar.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:slashtask/features/home/presentation/views/widgets/list_head.dart';
import 'package:slashtask/features/home/presentation/views/widgets/offers.dart';
import 'package:slashtask/features/home/presentation/views/widgets/products_grid_view.dart';

class SlashHomeViewDesktop extends StatelessWidget {
  const SlashHomeViewDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: width * 0.3,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomAppBar(),
                  SizedBox(height: 32),
                  CustomSearchBar(),
                  Spacer(),
                  Offers(),
                  Spacer(flex: 2),
                  CustomFeaturesBar(),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Column(
              children: [
                ListHead(name: "Categories"),
                SizedBox(height: 26),
                CategoryListView(),
                Expanded(
                  child: Row(
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: ListHead(name: "BestSelling"),
                            ),
                            Expanded(
                                child: ProductGridView(
                              productType: ProductType.bestSeller,
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: ListHead(name: "New Arrival"),
                            ),
                            Expanded(
                                child: ProductGridView(
                              productType: ProductType.newArrival,
                            )),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.0),
                              child: ListHead(name: "for you"),
                            ),
                            Expanded(
                                child: ProductGridView(
                              productType: ProductType.recommended,
                            )),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
