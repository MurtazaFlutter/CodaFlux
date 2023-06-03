import 'package:flutter/material.dart';
import '../utils/colors.dart';
import 'text_widget.dart';

class PrimaryButton extends StatelessWidget {
  final String buttonTitle;
  final VoidCallback onTap;
  const PrimaryButton({
    super.key, required this.buttonTitle, required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8)
      ),
        backgroundColor: kPrimaryColor,
        fixedSize: const Size.fromWidth(335),
        maximumSize: const Size.fromHeight(48),
      
        
      ),
      onPressed: onTap, child:  TextWidget(text: buttonTitle, weight: FontWeight.w600, size: 16, color: Colors.white,));
  }
}