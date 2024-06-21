import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';

class CustomFeaturesBar extends StatelessWidget {
  const CustomFeaturesBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double parentWidth = constraints.maxWidth;
        return Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Icon(Icons.home, size: getResponisveSize(context, size: 32)),
                  Icon(Icons.favorite_border,
                      size: getResponisveSize(context, size: 32)),
                  Icon(Icons.shopping_cart_outlined,
                      size: getResponisveSize(context, size: 32)),
                  Icon(Icons.person_outline_rounded,
                      size: getResponisveSize(context, size: 32)),
                ],
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              child: Container(
                height: 5,
                width: parentWidth / 4,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(16),
                    bottomRight: Radius.circular(16),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
