import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_shoping/models/product_models.dart';

import '../../../constants.dart';

import 'package:working_shoping/models/product.dart';

import '../../details/details.dart';
import 'Categories.dart';
import 'Item_card.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<ProductShop>(
        builder: (BuildContext context, ProductShop value, Widget? child) =>
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              // mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                  child: Text('包包',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(fontWeight: FontWeight.bold)),
                ),
                Categories(),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
                    child: GridView.builder(
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          childAspectRatio: 0.72,
                          crossAxisSpacing: kDefaultPadding,
                          mainAxisSpacing: kDefaultPadding),
                      itemCount: value.products.length,
                      itemBuilder: (BuildContext context, int index) {
                        return ItemCard(
                          product: value.products[index],
                          onPress: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => DetailScreen(
                                          product: value.products[index],
                                        )));
                          },
                        );
                      },
                    ),
                  ),
                )
              ],
            ));
  }
}
