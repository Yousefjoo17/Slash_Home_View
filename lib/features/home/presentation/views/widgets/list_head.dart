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
            fontSize: getResponisveSize(context, size: 20),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Spacer(),
        Text(
          "See all",
          style: TextStyle(fontSize: getResponisveSize(context, size: 16)),
        ),
        Icon(
          Icons.keyboard_arrow_right,
          size: getResponisveSize(context, size: 28),
        ),
      ],
    );
  }
}
