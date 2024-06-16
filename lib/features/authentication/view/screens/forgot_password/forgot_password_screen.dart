import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:e_commernce_ui/features/authentication/view/widgets/dont_have_an_account_sign_up.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/forgot_password/widgets/forget_password_form.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/forgot_password/widgets/forget_password_title_and_label.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Retrive Password'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
        width: double.infinity,
        child: Column(
          children: [
            const ForgetPasswordTitleAndLable(),
            SizedBox(height: getProportionateScreenHeight(130)),
            const FoegetPasswordForm(),
            SizedBox(height: getProportionateScreenHeight(130)),
            const DontHaveAnAccountSignUp(),
          ],
        ),
      ),
    );
  }
}
