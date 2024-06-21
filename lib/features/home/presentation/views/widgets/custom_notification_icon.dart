import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';

class CustomNotificationIcon extends StatelessWidget {
  const CustomNotificationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Icon(
          Icons.notifications_none,
          size: getResponisveSize(context, size: 34),
        ),
        Positioned(
            right: getResponisveSize(context, size: 7),
            top: getResponisveSize(context, size: 3),
            child: CircleAvatar(
              radius: getResponisveSize(context, size: 3.7),
              backgroundColor: Colors.white,
              child: CircleAvatar(
                radius: getResponisveSize(context, size: 3),
                backgroundColor: Colors.red,
              ),
            ))
      ],
    );
  }
}
