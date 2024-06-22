import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashtask/features/home/data/models/offer_model.dart';
import 'package:slashtask/features/home/presentation/view_models/scroll_offers/scroll_offers_cubit.dart';
import 'package:slashtask/features/home/presentation/views/widgets/offer_item.dart';

class CustomCursorSliderOffers extends StatelessWidget {
  const CustomCursorSliderOffers({
    super.key,
    required this.controller,
    required this.offers,
  });
  final CarouselController controller;
  final List<OfferModel> offers;
  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: offers
          .map((item) => Center(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(32),
                  child: OfferItem(offerModel: item))))
          .toList(),
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 2.5,
        enlargeCenterPage: true,
        autoPlayCurve: Curves.easeInOutQuart,
        onPageChanged: (index, reason) {
          BlocProvider.of<ScrollOffersCubit>(context).scroll(index);
        },
      ),
      carouselController: controller,
    );
  }
}
