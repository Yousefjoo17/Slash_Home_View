import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/core/utils/assets_data.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_add_icon.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getResponisveSize(context, size: 90),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Stusish Kitchrm",
            style: TextStyle(
              fontSize: getResponisveSize(context, size: 12),
            ),
          ),
          Row(
            children: [
              const Text(
                "EGP 55",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Spacer(flex: 2),
              ClipRRect(
                borderRadius: BorderRadius.circular(99),
                child: Image.asset(
                  AssetsData.i1,
                  width: getResponisveSize(context, size: 12),
                  fit: BoxFit.fill,
                ),
              ),
              const Spacer(flex: 1),
              const CustomAddIcon()
            ],
          )
        ],
      ),
    );
  }
}
