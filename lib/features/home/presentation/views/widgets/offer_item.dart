import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/core/utils/assets_data.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
        child: AspectRatio(
          aspectRatio: 2.5 / 1,
          child: Image.asset(
            AssetsData.testImg,
            width: getResponisveSize(context, size: 140),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
