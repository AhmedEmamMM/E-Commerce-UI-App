import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:flutter/material.dart';

class ForgetPasswordTitleAndLable extends StatelessWidget {
  const ForgetPasswordTitleAndLable({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          "Forget Password",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(28),
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 20),
        const Text(
          "Please enter your email and we will send you a like to return to your account",
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
