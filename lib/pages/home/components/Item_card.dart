import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product_models.dart';



class ItemCard extends StatelessWidget {
  final Product product;
  final Function()? onPress;
  ItemCard({super.key, required this.product, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.all(kDefaultPadding),
            decoration: BoxDecoration(
              color: product.color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Image.asset(product.image),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                vertical: kDefaultPadding / 4),
            child: Text(product.title),
          ),
          Text('\$${product.price}')
        ],
      ),
    );


  }
}