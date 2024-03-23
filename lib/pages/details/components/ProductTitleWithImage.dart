import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product_models.dart';


class ProductTitleWithImage extends StatelessWidget {
  final Product product;
  ProductTitleWithImage({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('${product.title}',
              style: TextStyle(color: Colors.white)),
          Text(product.title,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium
                  ?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold)),
          SizedBox(height: kDefaultPadding),
          Row(
            children: [
              RichText(
                  text: TextSpan(children: [
                    TextSpan(text: '价格\n'),
                    TextSpan(
                        text: '\$${product.price}',
                        style: Theme.of(context)
                            .textTheme
                            .headlineMedium
                            ?.copyWith(
                            color: Colors.white,
                            fontWeight: FontWeight.bold))
                  ])),
              SizedBox(height: kDefaultPadding),
              Expanded(
                  child: Image.asset(product.image,fit: BoxFit.fill,)
              ),
            ],
          ),
        ],
      ),
    );
  }
}