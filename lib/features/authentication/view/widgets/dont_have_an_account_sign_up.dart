import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:e_commernce_ui/core/constants/constants.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';

class DontHaveAnAccountSignUp extends StatelessWidget {
  const DontHaveAnAccountSignUp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account?  ",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(15),
          ),
        ),
        GestureDetector(
          onTap: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => const SignUpScreen())),
          child: Text(
            "Sign up",
            style: TextStyle(
              decoration: TextDecoration.underline,
              decorationColor: kPrimaryColor,
              decorationThickness: 2,
              color: kPrimaryColor,
              fontSize: getProportionateScreenWidth(16),
            ),
          ),
        ),
      ],
    );
  }
}
