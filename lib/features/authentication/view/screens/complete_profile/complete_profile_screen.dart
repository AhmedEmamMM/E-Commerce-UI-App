import 'package:e_commernce_ui/core/widgets/widgets_as_functions.dart';
import 'package:e_commernce_ui/features/authentication/view/screens/complete_profile/widgets/complete_profile_form.dart';
import 'package:flutter/material.dart';

class CompleteProfileScreen extends StatelessWidget {
  const CompleteProfileScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: SafeArea(
        child: SizedBox(
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  completeProfileTitle(),
                  const SizedBox(height: 8),
                  CircleAvatar(
                    backgroundColor: Colors.grey.shade400,
                    radius: 67,
                    child: CircleAvatar(
                      backgroundColor: Colors.grey.shade200,
                      radius: 65,
                      child: profilePersonIcon(),
                    ),
                  ),
                  const SizedBox(height: 8),
                  const CompleteProfileForm(),
                  const SizedBox(height: 30),
                  termsAndConditions(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
