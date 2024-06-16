import 'package:e_commernce_ui/features/home/view/cart/cart_screen.dart';
import 'package:e_commernce_ui/features/home/view/profile/profile_screen.dart';
import 'package:flutter/material.dart';

import 'icon_btn_with_counter.dart';
import 'search_field.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtnWithCounter(
            svgSrc: "assets/icons/User Icon.svg",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const ProfileScreen())),
          ),
          const SizedBox(width: 8),
          const Expanded(child: SearchField()),
          const SizedBox(width: 16),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Cart Icon.svg",
            press: () => Navigator.push(context,
                MaterialPageRoute(builder: (context) => const CartScreen())),
          ),
          const SizedBox(width: 8),
          IconBtnWithCounter(
            svgSrc: "assets/icons/Bell.svg",
            numOfitem: 3,
            press: () {},
          ),
        ],
      ),
    );
  }
}
