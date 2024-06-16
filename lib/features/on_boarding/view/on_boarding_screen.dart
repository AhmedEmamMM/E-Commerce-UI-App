import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:e_commernce_ui/features/on_boarding/view/widgets/body.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // you have to call it to intilaize it on ur starting screen
    SizeConfig().init(context);
    return const Scaffold(
      body: Body(),
    );
  }
}
