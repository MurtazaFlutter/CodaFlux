import 'package:coda_flex/utils/colors.dart';
import 'package:coda_flex/widgets/primary_button.dart';
import 'package:coda_flex/widgets/text_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/custom_text_field.dart';
import '../widgets/social_login_button.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

 

class _SignInScreenState extends State<SignInScreen> {
   bool switchValue = true; 
  @override
  Widget build(BuildContext context) {
  
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Gap(60),
               Image.asset('lib/assets/applogo.png'),
               const Gap(24),
               const TextWidget(text: 'Log in to your account', weight: FontWeight.w600, size: 24, color: kPrimaryColor,),
               const Gap(8),
               const TextWidget(text: 'Welcome back! Please enter your details', weight: FontWeight.w400, size: 16, color: Color(0xff667085),),
               const Gap(24),
               const Align(
                alignment: Alignment.centerLeft,
                child: TextWidget(text: 'Email', weight: FontWeight.w500, size: 15, align: TextAlign.start, color: kSecondarColor,)),
               const Gap(6),
                 const CustomTextField(
                hintText: 'Alphakabinekaba@gmail.com',
                keyBoardType: TextInputType.emailAddress,
               ),
               const Gap(16),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: TextWidget(text: 'Password', weight: FontWeight.w500, size: 15, align: TextAlign.start, color: kSecondarColor,)),
                const Gap(6),
               const CustomTextField(
                hintText:'*********',
                keyBoardType: TextInputType.visiblePassword,
                icon: Icons.remove_red_eye,
               ),
               const Gap(16),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      CupertinoSwitch(
                        activeColor: kAccent1Color,
                        value: switchValue, onChanged: (value) {
                          setState(() {
                            switchValue = value;
                          });
                        } ,),
                        const Gap(10),
                        const TextWidget(text: 'Remember me', weight: FontWeight.w400, size: 14, color: kPrimaryColor,)
                    ],
                  ),
                  const TextWidget(text: 'Forgot Password?', weight: FontWeight.w500, size: 16, color: kAccent1Color,)
                ],
               ),
               const Gap(40),
              PrimaryButton(buttonTitle: 'Sign In', onTap: () {}),
              const Gap(40),
              const Row(
                children: [
                  Flexible(
                    child: Divider(
                     color: Color(0xffEAECF0),
                    ),
                  ),
                  Gap(8),
                  TextWidget(text: 'OR', weight: FontWeight.w400, size: 14, color: kPrimaryColor,),
                   Gap(8),
                    Flexible(
                      child: Divider(
                      color: Color(0xffEAECF0),
                                      ),
                    ),
      
                ],
              ),
      
      const Gap(24),
               const SocialLoginButton(
                buttonTitle: 'Sign up with Google',
                image: 'lib/assets/google.svg',
                
              ),
              const Gap(12),
               const SocialLoginButton(
                buttonTitle: 'Sign up with Facebook',
                image: 'lib/assets/facebook.svg',
              ),
               const Gap(12),
               const SocialLoginButton(
                buttonTitle: 'Sign up with Apple',
                image: 'lib/assets/apple.svg',
              ),
              const Gap(24),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextWidget(text: 'Don\'t hace an account? ', weight: FontWeight.w500, size: 16, color: kPrimaryColor,),
                   TextWidget(text: 'Sign Up ', weight: FontWeight.w500, size: 16, color:kAccent1Color),
                ],
              ),
              const Gap(30),
        
            ],
          ),
        ),
      ),
    );
  }
}

