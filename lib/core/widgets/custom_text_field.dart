import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:slashtask/core/func/get_responsive_size.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.hinttext, this.onchanged});

  final String? hinttext;
  final Function(String)? onchanged;

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: const TextStyle(color: Colors.black),
      onChanged: onchanged,
      decoration: InputDecoration(
        prefixIcon: Opacity(
          opacity: .8,
          child: Icon(
            FontAwesomeIcons.magnifyingGlass,
            color: const Color(0xff9B9B9B),
            size: getResponisveSize(
              context,
              size: 16,
            ),
          ),
        ),
        hintText: hinttext,
        hintStyle: TextStyle(
            color: const Color(0xff9B9B9B),
            fontSize: getResponisveSize(
              context,
              size: 16,
            )),
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
  }
}
