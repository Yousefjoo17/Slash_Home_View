import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';

class CustomLocationIcon extends StatelessWidget {
  const CustomLocationIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(Icons.location_pin, size: getResponisveSize(context, size: 34)),
        Column(
          children: [
            Text(
              "Nasr City",
              style: TextStyle(fontSize: getResponisveSize(context, size: 14)),
            ),
            Text("Cairo",
                style: TextStyle(
                  fontSize: getResponisveSize(context, size: 14),
                  fontWeight: FontWeight.bold,
                )),
          ],
        ),
        Icon(Icons.keyboard_arrow_down,
            size: getResponisveSize(context, size: 34)),
      ],
    );
  }
}
