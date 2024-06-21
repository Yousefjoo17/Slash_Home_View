import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';

class ListHead extends StatelessWidget {
  const ListHead({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: getResponisveSize(context, size: 28),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        const Text(
          "See all",
          style: TextStyle(fontSize: 16),
        ),
        const Icon(Icons.keyboard_arrow_right),
      ],
    );
  }
}
