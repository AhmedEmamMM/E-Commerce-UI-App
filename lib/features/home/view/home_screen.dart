import 'package:e_commernce_ui/features/home/view/widgets/categories.dart';
import 'package:e_commernce_ui/features/home/view/widgets/discount_banner.dart';
import 'package:e_commernce_ui/features/home/view/widgets/home_header.dart';
import 'package:e_commernce_ui/features/home/view/widgets/popular_product.dart';
import 'package:e_commernce_ui/features/home/view/widgets/special_offers.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(),
              DiscountBanner(),
              Categories(),
              SpecialOffers(),
              SizedBox(height: 20),
              PopularProducts(),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
