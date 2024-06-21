import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/features/home/data/models/product_model.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_favourite_icon.dart';
import 'package:slashtask/features/home/presentation/views/widgets/product_info.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({Key? key, required this.productModel}) : super(key: key);
  final ProductModel productModel;

  @override
  Widget build(BuildContext context) {
    double imageSize = getResponisveSize(context, size: 90);

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(12), // Adjust the radius as needed
        child: AspectRatio(
          aspectRatio: 0.9 / 1,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(12), // Apply border radius to the image
                    child: SizedBox(
                      width: imageSize,
                      height: imageSize,
                      child: Image.asset(
                        productModel.image,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 5,
                    right: 6,
                    child: CustomFavouriteIcon(),
                  ),
                ],
              ),
              ProductInfo(
                productModel: productModel,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
