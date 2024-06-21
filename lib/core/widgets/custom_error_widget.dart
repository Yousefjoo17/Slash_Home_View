import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({super.key, required this.errMessage});
  final String errMessage;
  @override
  Widget build(BuildContext context) {
    return Text(
      errMessage,
      style: TextStyle(
        fontSize: getResponisveSize(context, size: 21),
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
