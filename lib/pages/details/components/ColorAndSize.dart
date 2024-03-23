import 'package:flutter/material.dart';

import '../../../constants.dart';
import '../../../models/product_models.dart';
import 'ColorDot.dart';

class ColorAndDot extends StatelessWidget {
  final Product product;
  final Function()? onSelectDot;
  const ColorAndDot({super.key, required this.onSelectDot, required this.product});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('配色', style: TextStyle(color: Colors.grey[700])),
            Row(
              children: [
                ColorDot(color: Color(0xFF356C95), isSelect: true, onPress: onSelectDot,),
                ColorDot(color: Color(0xFF306C66), onPress: onSelectDot),
                ColorDot(color: Color(0xFF467894), onPress: onSelectDot),
              ],
            ),
          ],
        )),
        Expanded(child: RichText(text: TextSpan(
            style: TextStyle(color: kTextColors),
            children: [
              TextSpan(
                  text: '尺码\n'
              ),
              TextSpan(
                  text: '${product.size}cm',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(fontWeight: FontWeight.bold)
              )
            ]
        ))),
      ],
    );
  }

}
