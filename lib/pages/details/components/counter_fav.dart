import 'package:flutter/material.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/svg.dart';

import 'CrtCounter.dart';

class CounterFav extends StatelessWidget {
  const CounterFav ({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CrtCounter(),
        Container(
          padding: EdgeInsets.all(8),
          height: 32,
          width: 32,
          child: SvgPicture.asset('assets/icons/heart.svg'),
          decoration: BoxDecoration(
            color: Color(0xFFFF6464),
            shape: BoxShape.circle,
          ),
        )
      ],
    );
  }
}
