import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_location_icon.dart';
import 'package:slashtask/features/home/presentation/views/widgets/custom_notification_icon.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          "Slash.",
          style: TextStyle(
              fontSize: getResponisveSize(context, size: 21),
              fontWeight: FontWeight.bold),
        ),
        const Spacer(),
        const CustomLocationIcon(),
        const Spacer(),
        const CustomNotificationIcon()
      ],
    );
  }
}
