import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';
import 'package:slashtask/core/widgets/custom_text_field.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 8,
          child: Container(
            width: getResponisveSize(context, size: 260),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8),
              color: const Color(0xffEEEEEE),
            ),
            child: const AspectRatio(
              aspectRatio: 8 / 1,
              child: CustomTextField(hinttext: "Search here.."),
            ),
          ),
        ),
        const Spacer(flex: 1),
        Expanded(
          flex: 1,
          child: AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                  color: const Color(0xffEEEEEE),
                  borderRadius: BorderRadius.circular(8)),
              child:const FittedBox(
                child: Padding(
                  padding: EdgeInsets.all(6.0),
                  child: Opacity(
                    opacity: 0.6,
                    child: Icon(
                      FontAwesomeIcons.sliders,
                      color: Color(0xff5F5F5F),
                    ),
                  ),
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
