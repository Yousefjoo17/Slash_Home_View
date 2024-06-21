import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/features/home/data/models/category_model.dart';

class CategoeryItem extends StatelessWidget {
  const CategoeryItem({super.key, required this.categoryModel});
  final CategoryModel categoryModel;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 4),
      child: AspectRatio(
        aspectRatio: 1 / 1.2,
        child: Column(
          children: [
            CircleAvatar(
              radius: getResponisveSize(context, size: 34),
              backgroundColor: const Color(0xff292929),
              child: Image.asset(
                categoryModel.image,
                width: getResponisveSize(context, size: 34),
                fit: BoxFit.cover,
              ),
            ),
            Text(
              categoryModel.name,
              style: TextStyle(fontSize: getResponisveSize(context, size: 16)),
            ),
          ],
        ),
      ),
    );
  }
}
