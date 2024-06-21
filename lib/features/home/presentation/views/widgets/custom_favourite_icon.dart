import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';

class CustomFavouriteIcon extends StatefulWidget {
  const CustomFavouriteIcon({super.key});

  @override
  State<CustomFavouriteIcon> createState() => _CustomFavouriteIconState();
}

class _CustomFavouriteIconState extends State<CustomFavouriteIcon> {
  bool cliked = false;
  @override
  Widget build(BuildContext context) {
    return cliked
        ? GestureDetector(
            onTap: () {
              setState(() {
                cliked = !cliked;
              });
            },
            child: CircleAvatar(
              radius: getResponisveSize(context, size: 8),
              backgroundColor: const Color(0xffEEEEEE),
              child: const FittedBox(
                child: Icon(
                  Icons.favorite,
                  color: Colors.red,
                ),
              ),
            ),
          )
        : GestureDetector(
            onTap: () {
              setState(() {
                cliked = !cliked;
              });
            },
            child: CircleAvatar(
              radius: getResponisveSize(context, size: 9),
              backgroundColor: const Color(0xffEEEEEE),
              child: const FittedBox(
                child: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
              ),
            ),
          );
  }
}
