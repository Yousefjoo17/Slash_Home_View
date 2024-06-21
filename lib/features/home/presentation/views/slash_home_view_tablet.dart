import 'package:flutter/material.dart';
import 'package:slashtask/features/home/presentation/views/widgets/category_list_view_row.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_cursor_slider_offers.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_fearures_bar.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:slashtask/features/home/presentation/views/widgets/list_head.dart';
import 'package:slashtask/features/home/presentation/views/widgets/products_list_view.dart';

class SlashHomeViewTablet extends StatelessWidget {
  const SlashHomeViewTablet({super.key});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.sizeOf(context).width;
    return Scaffold(
      body: Row(
        children: [
          SizedBox(
            width: width * 0.45,
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [
                  CustomAppBar(),
                  SizedBox(height: 32),
                  CustomSearchBar(),
                  Spacer(),
                  CustomCursorSliderOffers(),
                  Spacer(flex: 2),
                  CustomFeaturesBar(),
                  Spacer(),
                ],
              ),
            ),
          ),
          const Expanded(
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        ListHead(name: "Categories"),
                        SizedBox(height: 8),
                        CategoryListView(),
                        SizedBox(height: 16),
                        ListHead(name: "Best Selling"),
                        SizedBox(height: 8),
                        ProductListView(),
                        SizedBox(height: 16),
                        ListHead(name: "New Arrival"),
                        SizedBox(height: 8),
                        ProductListView(),
                        SizedBox(height: 16),
                        ListHead(name: "For you"),
                        ProductListView(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
