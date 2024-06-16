import 'package:e_commernce_ui/core/widgets/product_card.dart';
import 'package:e_commernce_ui/features/home/data/models/Product.dart';
import 'package:e_commernce_ui/features/home/view/details/details_screen.dart';
import 'package:e_commernce_ui/features/home/view/products/products_screen.dart';
import 'package:flutter/material.dart';

import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Popular Products",
            press: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ProductsScreen()));
            },
          ),
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: ProductCard(
                        product: demoProducts[index],
                        onPress: () => Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  DetailsScreen(product: demoProducts[index]),
                            )),
                      ),
                    );
                  }

                  return const SizedBox
                      .shrink(); // here by default width and height is 0
                },
              ),
              const SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}