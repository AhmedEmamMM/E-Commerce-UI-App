import 'package:e_commernce_ui/core/routes/routes_name.dart';
import 'package:e_commernce_ui/features/on_boarding/view/on_boarding_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  Route? onGenerate(RouteSettings settings) {
    switch (settings.name) {
      case RoutesName.onBoarding:
        return MaterialPageRoute(
            builder: (context) => const OnBoardingScreen());
    }
    return null;
  }
}
