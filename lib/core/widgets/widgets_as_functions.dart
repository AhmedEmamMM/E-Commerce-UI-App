import 'package:e_commernce_ui/core/constants/constants.dart';
import 'package:flutter/material.dart';

Widget profilePersonIcon() {
  return Icon(Icons.person_2_outlined, size: 100, color: Colors.grey.shade400);
}

Widget completeProfileTitle() {
  return const Column(
    children: [
      Text("Complete Profile", style: headingStyle),
      Text("Complete your details or continue\nwith social media",
          textAlign: TextAlign.center)
    ],
  );
}

Widget termsAndConditions(BuildContext context) {
  return Text(
      "By continuing your confirm that you agree\nwith our Term and Condition",
      textAlign: TextAlign.center,
      style: Theme.of(context).textTheme.bodySmall);
}
