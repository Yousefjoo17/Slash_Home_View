import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/features/home/presentation/views/widgets/offer_item.dart';

class OfferListView extends StatelessWidget {
  const OfferListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: getResponisveSize(context, size: 140),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 12,
        itemBuilder: (context, index) {
          return const OfferItem();
        },
      ),
    );
  }
}
