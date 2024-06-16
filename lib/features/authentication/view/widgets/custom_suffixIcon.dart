import 'package:e_commernce_ui/core/constants/config_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomSuffixIcon extends StatelessWidget {
  final String iconPath;
  const CustomSuffixIcon({super.key, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(
        0,
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
        getProportionateScreenWidth(20),
      ),
      child:
          SvgPicture.asset(iconPath, height: getProportionateScreenHeight(18)),
    );
  }
}
