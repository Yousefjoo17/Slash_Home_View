import 'package:flutter/material.dart';
import 'package:slashtask/features/home/data/models/offer_model.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({Key? key, required this.offerModel}) : super(key: key);
  final OfferModel offerModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Image.asset(
          offerModel.image,
          fit: BoxFit.fill,
          // width: getResponisveSize(context, size: 80),
        ),
      ),
    );
  }
}
