import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:flutter/material.dart';

class SignInWelcomeTitle extends StatelessWidget {
  const SignInWelcomeTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Welcome Back',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(28),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Sign in with your email and password \n or continue with social media',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
