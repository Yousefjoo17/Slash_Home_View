import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/core/utils/assets_data.dart';
import 'package:slashtask/features/home/data/models/product_model.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_add_icon.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key, required this.productModel});
final  ProductModel productModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          productModel.name,
          style: TextStyle(
            fontSize: getResponisveSize(context, size: 12),
          ),
        ),
        Row(
          children: [
            Text(
              "EGP ${productModel.price}",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: getResponisveSize(context, size: 12)),
            ),
            const Spacer(flex: 2),
            ClipRRect(
              borderRadius: BorderRadius.circular(99),
              child: Image.asset(
                AssetsData.c1,
                width: getResponisveSize(context, size: 12),
                fit: BoxFit.fill,
              ),
            ),
            const Spacer(flex: 1),
            const CustomAddIcon()
          ],
        )
      ],
    );
  }
}
