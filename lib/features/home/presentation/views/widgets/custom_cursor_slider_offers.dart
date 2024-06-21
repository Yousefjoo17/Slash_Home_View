import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashtask/core/widgets/custom_error_widget.dart';
import 'package:slashtask/features/home/presentation/view_models/cubit/products_cubit.dart';
import 'package:slashtask/features/home/presentation/views/widgets/offer_item.dart';

class CustomCursorSliderOffers extends StatelessWidget {
  const CustomCursorSliderOffers({
    super.key,
  });

  //final List<String> imagesUrls;
  //final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsSuccess) {
          return CarouselSlider(
            items: state.offers
                .map(
                  (item) => Center(
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(32),
                      child:  OfferItem(offerModel: item),
                    ),
                  ),
                )
                .toList(),
            options: CarouselOptions(
              autoPlay: false,
              aspectRatio: 1.5,
              enlargeCenterPage: true,
              autoPlayCurve: Curves.easeInOutQuart,
              onPageChanged: (index, reason) {
                //BlocProvider.of<SelectingImageCubit>(context).changePic(index);
              },
            ),
            //  carouselController: controller,
          );
        } else {
          return const CustomErrorWidget(errMessage: "Error");
        }
      },
    );
  }
}
