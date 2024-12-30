import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

enum FontFamily { poppins, roboto, lato }

class CustomText extends StatelessWidget {
  final String? text;
  final FontFamily? fontFamily;

  const CustomText(this.text, {super.key, this.fontFamily});

  @override
  Widget build(BuildContext context) {
    return Text(text ?? "Text",
        style: fontFamily == FontFamily.roboto
            ? GoogleFonts.roboto()
            : fontFamily == FontFamily.lato
                ? GoogleFonts.lato()
                : GoogleFonts.poppins());
  }
}

class P2 extends StatelessWidget {
  const P2({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomText(
      'Hello World',
      fontFamily: FontFamily.poppins,
    );
  }
}
