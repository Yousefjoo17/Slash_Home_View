import 'package:flutter/material.dart';
import 'package:slashtask/core/utils/assets_data.dart';

class OfferItem extends StatelessWidget {
  const OfferItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(32),
        child: Image.asset(
          AssetsData.o1,
          fit: BoxFit.fill,
          // width: getResponisveSize(context, size: 80),
        ),
      ),
    );
  }
}
