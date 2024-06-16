import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:e_commernce_ui/core/constants/constants.dart';
import 'package:e_commernce_ui/core/widgets/my_button.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/sign_in/sign_in_screen.dart';
import 'package:e_commernce_ui/features/on_boarding/data/on_boarding_data.dart';
import 'package:e_commernce_ui/features/on_boarding/view/widgets/on_boarding_content.dart';
import 'package:flutter/material.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          children: [
            Expanded(
                flex: 3,
                child: PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      currentIndex = value;
                    });
                  },
                  itemCount: onBoardingData.length,
                  itemBuilder: (context, index) => OnBoardingContent(
                    text: onBoardingData[index]["text"]!,
                    image: onBoardingData[index]["image"]!,
                  ),
                )),
            Expanded(
              flex: 2,
              child: Column(
                children: [
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                      onBoardingData.length,
                      (index) => buildDot(index: index),
                    ),
                  ),
                  const Spacer(),
                  MyButton(
                    backGroudcolor: kPrimaryColor,
                    text: "Continue",
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontSize: getProportionateScreenWidth(18)),
                    onPressed: () {
                      Navigator.pushReplacement(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SignInScreen(),
                        ),
                      );
                    },
                  ),
                  const Spacer(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({required int index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: const EdgeInsets.only(right: 5),
      height: 6,
      width: currentIndex == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentIndex == index ? kPrimaryColor : const Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
