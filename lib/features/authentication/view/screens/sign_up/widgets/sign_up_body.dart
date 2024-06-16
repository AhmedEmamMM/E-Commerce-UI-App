import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:e_commernce_ui/core/widgets/widgets_as_functions.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/sign_up/widgets/sign_up_form.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/sign_up/widgets/sign_up_register_title.dart';
import 'package:e_commernce_ui/features/authentication/view/widgets/row_of_social_media.dart';
import 'package:flutter/material.dart';

class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 35),
          width: double.infinity,
          child: Column(
            children: [
              const SignUpRegisterTitle(),
              SizedBox(height: getProportionateScreenHeight(50)),
              const SignUpForm(),
              SizedBox(height: getProportionateScreenHeight(30)),
              RowOfSocialMedias(
                googleOnTap: () {},
                facebookOnTap: () {},
                twitterOnTap: () {},
              ),
              SizedBox(height: getProportionateScreenHeight(30)),
              termsAndConditions(context),
            ],
          ),
        ),
      ),
    );
  }
}
