import 'package:flutter/material.dart';

import '../../../constants.dart';


class ColorDot extends StatelessWidget {
  final Color color;
  final bool isSelect;
  final Function()? onPress;
  ColorDot({super.key, required this.color, this.isSelect = false, required this.onPress });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: EdgeInsets.only(
          top: kDefaultPadding / 4,
          right: kDefaultPadding / 2,
        ),
        padding: EdgeInsets.all(2.5),
        height: 24,
        width: 24,
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelect ? color : Colors.transparent,
            )
        ),
        child: DecoratedBox(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: color,
          ),
        ),
      ),
    );
  }
}