import 'package:flutter/material.dart';
import 'package:slashtask/features/home/presentation/views/widgets/product_item.dart';

class ProductGridView extends StatelessWidget {
  const ProductGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: GridView.builder(
        itemCount: 10,
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 0.65,
          crossAxisSpacing: 8,
          mainAxisSpacing: 20,
        ),
        itemBuilder: (context, index) {
          return const ProductItem();
        },
      ),
    );
  }
}
