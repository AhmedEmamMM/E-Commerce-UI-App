import 'package:e_commernce_ui/features/authentication/view/widgets/social_card.dart';
import 'package:flutter/material.dart';

class RowOfSocialMedias extends StatelessWidget {
  final void Function()? googleOnTap;
  final void Function()? facebookOnTap;
  final void Function()? twitterOnTap;
  const RowOfSocialMedias({
    super.key,
    required this.googleOnTap,
    required this.facebookOnTap,
    required this.twitterOnTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialCard(
          svgIcon: "assets/icons/google-icon.svg",
          onTap: googleOnTap,
        ),
        SocialCard(
          svgIcon: "assets/icons/facebook-2.svg",
          onTap: facebookOnTap,
        ),
        SocialCard(
          svgIcon: "assets/icons/twitter.svg",
          onTap: twitterOnTap,
        ),
      ],
    );
  }
}
