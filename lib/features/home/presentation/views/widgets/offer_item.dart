import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
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
        child: SizedBox(
          width: getResponisveSize(context, size: 300), // Set the desired width
          height:
              getResponisveSize(context, size: 150), // Set the desired height
          child: Image.asset(
            offerModel.image,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
