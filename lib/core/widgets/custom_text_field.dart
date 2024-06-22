import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hinttext});
  final String? hinttext;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        double iconSize = constraints.maxHeight * 0.4; // Adjust the factor as needed
        double fontSize = constraints.maxHeight * 0.4; // Adjust the factor as needed

        return TextField(
          style: const TextStyle(color: Colors.black),
          decoration: InputDecoration(
            prefixIcon: Opacity(
              opacity: .8,
              child: Icon(
                FontAwesomeIcons.magnifyingGlass,
                color: const Color(0xff9B9B9B),
                size: iconSize,
              ),
            ),
            hintText: hinttext,
            hintStyle: TextStyle(
                color: const Color(0xff9B9B9B),
                fontSize: fontSize,
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffEEEEEE)),
              borderRadius: BorderRadius.circular(8),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffEEEEEE)),
              borderRadius: BorderRadius.circular(8),
            ),
            border: OutlineInputBorder(
              borderSide: const BorderSide(color: Color(0xffEEEEEE)),
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        );
      },
    );
  }
}
