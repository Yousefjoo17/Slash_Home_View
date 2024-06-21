import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/core/utils/assets_data.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_favourite_icon.dart';
import 'package:slashtask/features/home/presentation/views/widgets/product_info.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
        child: AspectRatio(
          aspectRatio: 0.7 / 1,
          child: Column(
            children: [
              Stack(
                children: [
                  Image.asset(
                    AssetsData.c1,
                    width: getResponisveSize(context, size: 90),
                    fit: BoxFit.cover,
                  ),
                  const Positioned(
                    top: 5,
                    right: 6,
                    child: CustomFavouriteIcon(),
                  ),
                ],
              ),
              const ProductInfo()
            ],
          ),
        ),
      ),
    );
  }
}
