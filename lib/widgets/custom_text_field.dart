import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../utils/colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final IconData? icon;
  final bool? obSecure;
  final TextInputType keyBoardType;
 
  const CustomTextField({
    super.key, required this.hintText,  this.icon, this.obSecure, required this.keyBoardType,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     height: 48,
      child: TextFormField(
        obscureText: false,
        keyboardType: keyBoardType,
       style: GoogleFonts.inter(
           fontSize: 16,
           fontWeight: FontWeight.w400, 
           color: kPrimaryColor
         ),
       decoration: InputDecoration(
        suffixIcon:  Icon(icon),
        
         contentPadding: const EdgeInsets.only(top: 12, bottom: 12, left: 14, right: 14) ,
         hintText: hintText,
         hintStyle: GoogleFonts.inter(
           fontSize: 16,
           fontWeight: FontWeight.w400, 
           color: kPrimaryColor
         ),
        enabledBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(8),
         borderSide: const BorderSide(
           color: Color(0xffD0D5DD),
           
         )
        ),
        focusedBorder: OutlineInputBorder(
         borderRadius: BorderRadius.circular(8),
         borderSide: const BorderSide(
           color: Color(0xffD0D5DD),
           
         )
        ),
       ),
      ),
    );
  }
}