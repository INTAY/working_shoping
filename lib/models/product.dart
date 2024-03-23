import 'package:flutter/material.dart';
import 'package:working_shoping/models/product_models.dart';

class ProductShop extends ChangeNotifier {


  List<Product> products = [
    Product(image: "assets/images/bag_1.png", title: '蓝色手提包', description: '包包', id: 1, size: 12, price: 234, color: Color(0xFF3D82E)),
    Product(image: "assets/images/bag_2.png", title: '蓝色手提包', description: '包包--------------------------------------------1231123123123', id: 2, size: 8, price: 234, color: Color(0xFFD3A984)),
    Product(image: "assets/images/bag_3.png", title: '蓝色手提包', description: '包包', id: 3, size: 10, price: 234, color: Color(0xFF989493)),
    Product(image: "assets/images/bag_4.png", title: '蓝色手提包', description: '包包', id: 4, size: 11, price: 234, color: Color(0xFFE6B398)),
    Product(image: "assets/images/bag_5.png", title: '蓝色手提包', description: '包包', id: 5, size: 12, price: 234, color: Color(0xFFFB7883)),
    Product(image: "assets/images/bag_6.png", title: '蓝色手提包', description: '包包', id: 6, size: 12, price: 234, color: Color(0xFFAEAEAE)),
  ];

  List<Product> get productShop => products; //
  
}
