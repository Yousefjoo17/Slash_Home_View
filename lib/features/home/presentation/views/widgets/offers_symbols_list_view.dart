import 'package:carousel_slider/carousel_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/features/home/data/models/offer_model.dart';
import 'package:slashtask/features/home/presentation/view_models/scroll_offers/scroll_offers_cubit.dart';

class OffersSymbolsListView extends StatelessWidget {
  const OffersSymbolsListView({
    Key? key,
    required this.controller,
    required this.offers,
  }) : super(key: key);

  final CarouselController controller;
  final List<OfferModel> offers;
  @override
  Widget build(BuildContext context) {
    int currIndex = BlocProvider.of<ScrollOffersCubit>(context).currImgIndex;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: offers.length,
      itemBuilder: (BuildContext context, int index) {
        return index == currIndex
            ? Container(
              width: getResponisveSize(context, size: 16),
              //height: 5,
              decoration: BoxDecoration(
                color: const Color(0xff292929),
                borderRadius: BorderRadius.circular(8),
              ),
            )
            : GestureDetector(
              child: ClipRRect(
                  borderRadius: BorderRadius.circular(
                      getResponisveSize(context, size: 16)),
                  child: const CircleAvatar(
                    backgroundColor: Color(0xffB8B8B8),
                    radius: 12,
                  ),
                ),
                 onTap: () {
                  BlocProvider.of<ScrollOffersCubit>(context).scroll(index);
                  controller.animateToPage(index);
                },
            );
      },
    );
  }
}
