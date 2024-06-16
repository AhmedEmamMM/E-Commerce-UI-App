import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/sign_in/widgets/sign_in_form.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/sign_in/widgets/sign_in_welcome_title.dart';
import 'package:e_commernce_ui/features/authentication/view/widgets/dont_have_an_account_sign_up.dart';
import 'package:e_commernce_ui/features/authentication/view/widgets/row_of_social_media.dart';
import 'package:flutter/material.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
          width: double.infinity,
          child: Column(
            children: [
              const SignInWelcomeTitle(),
              SizedBox(height: getProportionateScreenHeight(80)),
              const SignInForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              RowOfSocialMedias(
                googleOnTap: () {},
                facebookOnTap: () {},
                twitterOnTap: () {},
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              const DontHaveAnAccountSignUp(),
              // const NoAccountText(),
            ],
          ),
        ),
      ),
    );
  }
}
