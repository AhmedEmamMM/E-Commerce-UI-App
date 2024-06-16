import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:e_commernce_ui/core/constants/constants.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/otp/widgets/expiration_code_duration.dart';
import 'package:flutter/material.dart';

import 'widgets/otp_form.dart';

class OtpScreen extends StatelessWidget {
  final String? phoneNumber;
  const OtpScreen({super.key, this.phoneNumber});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("OTP Verification")),
      body: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SingleChildScrollView(
            child: Column(children: [
              const SizedBox(height: 16),
              const Text("OTP Verification", style: headingStyle),
              Text(
                  "We sent your code to +2 01 ${phoneNumber!.substring(2, 7)} ****"),
              const ExpirationCodeDuration(),
              const OtpForm(),
              const SizedBox(height: 20),
              // OTP code resend
              GestureDetector(
                onTap: () {},
                child: Text(
                  "Resend OTP Code",
                  style: TextStyle(
                    fontSize: getProportionateScreenWidth(15),
                    color: kPrimaryColor,
                    decorationColor: kPrimaryColor,
                    decorationThickness: 2,
                    decoration: TextDecoration.underline,
                  ),
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
