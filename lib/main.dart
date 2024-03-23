import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:working_shoping/pages/home/home_page.dart';

import 'models/product.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ProductShop(),
      builder: (context, index) =>  MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),

        home: HomePage(),
      )
    );

  }
}