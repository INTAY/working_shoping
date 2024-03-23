import 'package:flutter/material.dart';

import '../../../constants.dart';

class CrtCounter extends StatefulWidget {
  const CrtCounter({super.key});

  @override
  State<CrtCounter> createState() => _CrtCounterState();
}

class _CrtCounterState extends State<CrtCounter> {
  int numOftems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 32,
          width: 48,
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                numOftems--;
              });
            },
            child: Icon(Icons.remove),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))
              ),
            ),
          ),
        ),
        Padding(padding: EdgeInsets.symmetric(horizontal: kDefaultPadding / 2), child: Text('${numOftems.toString().padLeft(2, '0 ')}',style: Theme.of(context).textTheme.headlineMedium)),
        SizedBox(
          height: 32,
          width: 48,
          child: OutlinedButton(
            onPressed: () {
              setState(() {
                numOftems++;
              });
            },
            child: Icon(Icons.add),
            style: ButtonStyle(
              padding: MaterialStateProperty.all(EdgeInsets.zero),
              shape: MaterialStateProperty.all(
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(13))
              ),
            ),
          ),
        ),
      ],
    );
  }
}