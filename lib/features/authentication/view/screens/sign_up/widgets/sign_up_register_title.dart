import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:flutter/material.dart';

class SignUpRegisterTitle extends StatelessWidget {
  const SignUpRegisterTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          'Register Account',
          style: TextStyle(
            color: Colors.black,
            fontSize: getProportionateScreenWidth(28),
            fontWeight: FontWeight.bold,
          ),
        ),
        const Text(
          'Complete your details or continue \nwith social media',
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
