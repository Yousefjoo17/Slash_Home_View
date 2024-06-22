import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/core/widgets/custom_error_widget.dart';
import 'package:slashtask/features/home/presentation/view_models/products_cubit/products_cubit.dart';
import 'package:slashtask/features/home/presentation/view_models/scroll_offers/scroll_offers_cubit.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_cursor_slider_offers.dart';
import 'package:slashtask/features/home/presentation/views/widgets/offers_symbols_list_view.dart';

class Offers extends StatelessWidget {
  const Offers({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ScrollOffersCubit, ScrollOffersState>(
      builder: (context, state) {
        return BlocBuilder<ProductsCubit, ProductsState>(
          builder: (context, state) {
            if (state is ProductsSuccess) {
              final CarouselController controller =
                  BlocProvider.of<ScrollOffersCubit>(context).controller;
              return Column(
                children: [
                  CustomCursorSliderOffers(
                    controller: controller,
                    offers: state.offers,
                  ),
                  const SizedBox(height: 16),
                  SizedBox(
                      height: getResponisveSize(context, size: 8),
                      width: getResponisveSize(context, size: 70),
                      child: OffersSymbolsListView(
                          controller: controller, offers: state.offers))
                ],
              );
            } else {
              return const CustomErrorWidget(errMessage: "Error");
            }
          },
        );
      },
    );
  }
}
