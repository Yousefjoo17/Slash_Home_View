import 'package:flutter/material.dart';
import 'package:slashtask/features/home/presentation/views/widgets/category_list_view_row.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_app_bar.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_fearures_bar.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_search_bar.dart';
import 'package:slashtask/features/home/presentation/views/widgets/list_head.dart';
import 'package:slashtask/features/home/presentation/views/widgets/products_list_view_row.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_cursor_slider_offers.dart';

class SlashHomeViewMobile extends StatelessWidget {
  const SlashHomeViewMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: EdgeInsets.all(12.0),
              child: CustomScrollView(
                slivers: [
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        AppBarWidget(),
                        SizedBox(height: 16),
                        CustomSearchBar(),
                        SizedBox(height: 16),
                        CustomCursorSliderOffers(),
                        SizedBox(height: 16),
                        ListHead(name: "Categories"),
                        SizedBox(height: 8),
                        CategoryListViewRow(),
                        SizedBox(height: 16),
                        ListHead(name: "Best Selling"),
                        SizedBox(height: 8),
                        ProductListViewRow(),
                        SizedBox(height: 16),
                        ListHead(name: "New Arrival"),
                        SizedBox(height: 8),
                        ProductListViewRow(),
                        SizedBox(height: 16),
                        ListHead(name: "For you"),
                        SizedBox(height: 8),
                        ProductListViewRow(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          CustomFeaturesBar()
        ],
      ),
    );
  }
}
