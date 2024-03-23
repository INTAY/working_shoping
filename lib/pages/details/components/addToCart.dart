import 'package:flutter/material.dart';


class AndToCart extends StatelessWidget {
  const AndToCart({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: Padding(
          padding: EdgeInsets.only(left: 10, right: 10),
          child: SizedBox(
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(
                  '购买',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
              )),
        ));
  }
}
