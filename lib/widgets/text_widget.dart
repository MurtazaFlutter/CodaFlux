import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends StatelessWidget {
  final String text;
  final FontWeight weight;
  final Color? color;
  final double size;
  final TextAlign? align;

  const TextWidget({
    super.key, required this.text, required this.weight, this.color, required this.size, this.align,
  });

  @override
  Widget build(BuildContext context) {
    return Text(text, style: GoogleFonts.inter(
      fontSize: size,
      fontWeight: weight,
            
      color: color
    
    ),
    textAlign:align,
    );
  }
}