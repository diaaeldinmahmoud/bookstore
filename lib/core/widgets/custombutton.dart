import 'package:bookstore/core/utils/styles.dart';
import 'package:flutter/material.dart';

class Custombutton extends StatelessWidget {
  const Custombutton({
    super.key,
    required this.backgroundcolor,
    required this.textcolor,
    this.borderradius,
    required this.text,
    this.fontsize,
    this.onPressed,
  });
  final Color backgroundcolor;
  final Color textcolor;
  final BorderRadius? borderradius;
  final String text;
  final double? fontsize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: TextButton(
        style: TextButton.styleFrom(
          backgroundColor: backgroundcolor,

          shape: RoundedRectangleBorder(
            borderRadius: borderradius ?? BorderRadius.circular(16),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        ),
        onPressed: onPressed,
        child: Text(
          text,
          style: Styles.textstyle18.copyWith(
            color: textcolor,
            fontWeight: FontWeight.w900,
            fontSize: fontsize,
          ),
        ),
      ),
    );
  }
}
