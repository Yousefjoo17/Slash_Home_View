import 'package:flutter/material.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';

class CustomAddIcon extends StatefulWidget {
  const CustomAddIcon({super.key});

  @override
  State<CustomAddIcon> createState() => _CustomFavouriteIconState();
}

class _CustomFavouriteIconState extends State<CustomAddIcon> {
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
              backgroundColor: const Color(0xff292929),
              child: const FittedBox(
                child: Icon(
                  Icons.done,
                  color: Colors.white,
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
              radius: getResponisveSize(context, size: 8),
              backgroundColor: const Color(0xff292929),
              child: const FittedBox(
                child: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
              ),
            ),
          );
  }
}
