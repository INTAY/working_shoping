import 'package:flutter/material.dart';

class Product {
final String image, title, description;
final int id, size, price;
final Color color;

Product({
required this.image,
required this.title,
required this.description,
required this.id,
required this.size,
required this.price,
required this.color,
});
}