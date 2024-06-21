import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/core/utils/assets_data.dart';

class CategoeryItem extends StatelessWidget {
  const CategoeryItem({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: AspectRatio(
          aspectRatio: 1 / 1,
          child: CircleAvatar(
            radius: getResponisveSize(context, size: 34),
            backgroundColor: const Color(0xff292929),
            child: Image.asset(
              AssetsData.i1,
              width: getResponisveSize(context, size: 34),
              fit: BoxFit.cover,
            ),
          )),
    );
  }
}
