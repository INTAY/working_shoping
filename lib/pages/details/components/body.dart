import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:working_shoping/constants.dart';
import 'package:working_shoping/models/product_models.dart';

import 'ColorAndSize.dart';
import 'ProductTitleWithImage.dart';
import 'addToCart.dart';
import 'counter_fav.dart';

class Body extends StatelessWidget {
  final Product product;
  const Body({super.key, required this.product});

  void onSelectDot() {
    print('点击');
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: size.height,
            child: Stack(
              children: <Widget>[
                Container(
                  height: 500,
                  margin: EdgeInsets.only(top: size.height * 0.3),
                  padding: EdgeInsets.only(
                    top: size.height * 0.08,
                    left: kDefaultPadding,
                    right: kDefaultPadding,
                  ),
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30),
                      )),
                  child: Column(
                    children: [
                      ColorAndDot(
                          product: product, onSelectDot: () => onSelectDot),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: kDefaultPadding),
                        child: Text(
                          product.description,
                          style: TextStyle(height: 1.5),
                        ),
                      ),
                      CounterFav(),
                      Padding(
                        padding:
                            EdgeInsets.symmetric(vertical: kDefaultPadding),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 50,
                              width: 58,
                              child: IconButton(
                                icon: SvgPicture.asset(
                                    'assets/icons/add_to_cart.svg'),
                                onPressed: () {},
                              ),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(18),
                                  border: Border.all(color: product.color)),
                            ),
                            AndToCart(),
                            ],
                        ),
                      )
                    ],
                  ),
                ),
                ProductTitleWithImage(
                  product: product,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
