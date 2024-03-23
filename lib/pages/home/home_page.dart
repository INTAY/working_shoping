
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:working_shoping/pages/home/components/body.dart';

import '../../constants.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: SvgPicture.asset('assets/icons/back.svg'), onPressed: () {}),
        actions: <Widget>[
          IconButton(icon: SvgPicture.asset('assets/icons/search.svg', color: kTextColors), onPressed: () {}),
          IconButton(icon: SvgPicture.asset('assets/icons/cart.svg', color: kTextColors,), onPressed: () {})
        ],
      ),
      body: Body(),
    );
  }
}
