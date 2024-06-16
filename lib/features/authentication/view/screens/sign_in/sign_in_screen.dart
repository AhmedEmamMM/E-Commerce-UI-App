import 'package:e_commernce_ui/features/authentication/view/screens/sign_in/widgets/sign_in_body.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign in screen'),
      ),
      body: const SignInBody(),
    );
  }
}
