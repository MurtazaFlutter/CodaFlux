import 'package:coda_flex/screens/sign_up_screen.dart';
import 'package:coda_flex/utils/colors.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import '../widgets/primary_button.dart';
import '../widgets/text_widget.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Gap(60),
      
          Image.asset('lib/assets/applogo.png'),
      
          const Gap(58),
        Flexible(
          child: PageView.builder(
            itemCount: 3,
            onPageChanged: (value) {
            setState(() {
                selectedIndex = value;
            });
            },
            itemBuilder: ((context, index) {
            return Column(
              children: [
                Image.asset('lib/assets/onboard1.png'),
                  const Gap(40),
            const Center(
              child: TextWidget(text: 'Harnessing the Power of \nCODA Files', weight: FontWeight.w600, size: 24, color: kSecondarColor, align: TextAlign.center,)
            ),
            const Gap(16),
            const TextWidget(text: 'Revolutionizing Accounting with Client Collaboration', weight: FontWeight.w400, size: 16, align: TextAlign.center, color: Color(0xff344054
      ),),
      const Gap(48),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ...List.generate(3, (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                  height: 10, width: 10,
                  decoration: BoxDecoration(
                    color: selectedIndex == index ?  const Color(0xff47AEC6) : const Color(0xffD0D5DD),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                ),)
              ],
            )
      
      
      
              ],
            );
          })),
        ),
       
      
      
        PrimaryButton(
          buttonTitle: 'Create New Account',
          onTap: () {
            Navigator.push(context, MaterialPageRoute(builder: ((context) => const SignUpScreen())));
            
          },
        ),
          const Gap(16),
          const TextWidget(text: 'Sign In', weight: FontWeight.w600, size: 16, color: kSecondarColor,),
          const Gap(40)
        
      
        ],
      ),
    );
  }
}



