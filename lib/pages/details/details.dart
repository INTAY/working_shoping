import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../constants.dart';
import '../../models/product_models.dart';
import 'package:working_shoping/pages/details/components/body.dart';


class DetailScreen extends StatelessWidget {
  final Product product;
  DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: AppBar(
        backgroundColor: product.color,
        elevation: 0,
        leading: IconButton(
          icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white,),
          onPressed: () => Navigator.pop(context),
        ),
        actions: <Widget>[
          IconButton(icon: SvgPicture.asset('assets/icons/search.svg', color: Colors.white), onPressed: () {}),
          IconButton(icon: SvgPicture.asset('assets/icons/cart.svg', color: Colors.white,), onPressed: () {}),
          SizedBox(width: kDefaultPadding / 3 ,)
        ],

      ),
      body: Body(product: product),
    );
  }
}
