import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import '../utils/colors.dart';
import 'text_widget.dart';

class SocialLoginButton extends StatelessWidget {
  final String buttonTitle;
  final String image;
  const SocialLoginButton({
    super.key, required this.buttonTitle, required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        side: const BorderSide(
          color: Color(0xffD0D5DD)
        ),
         shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5)
      ),
        backgroundColor: Colors.white,
        fixedSize: const Size.fromWidth(335),
        maximumSize: const Size.fromHeight(48),
      ),
      onPressed: () {}, child:  Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SvgPicture.asset(image, height: 30,),
        const Gap(14),

        TextWidget(text: buttonTitle, weight: FontWeight.w400, size: 16, color: kSecondarColor,),

      ],
    ));
  }
}