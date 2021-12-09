import 'package:flutter/material.dart';

class Product {
  // ürün bilgileri ekranı için class oluşturduk.
  late final String image, title, description;
  late final int price, size, id;
  late final Color color;
  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> products = [
  Product(
      id: 1,
      image: "lib/images/2.png",
      title: "Office Code",
      price: 234,
      description: aciklamaYazisi,
      size: 12,
      color: Color(0xFF2F2B2C)),
  Product(
      id: 2,
      image: "lib/images/5.png",
      title: "Belt Bag",
      price: 210,
      description: aciklamaYazisi,
      size: 8,
      color: Color(0xFFDDCCB4)),
  Product(
      id: 3,
      image: "lib/images/4.png",
      title: "Cool Bag",
      price: 357,
      description: aciklamaYazisi,
      size: 10,
      color: Color(0xFF6F57AA)),
  Product(
      id: 4,
      image: "lib/images/1.png",
      title: "Old Fashion",
      price: 138,
      description: aciklamaYazisi,
      size: 11,
      color: Color(0xFF2E3031)),
  Product(
      id: 5,
      image: "lib/images/6.png",
      title: "Office Code",
      price: 217,
      description: aciklamaYazisi,
      size: 12,
      color: Color(0xFFA5A99A)),
  Product(
      id: 6,
      image: "lib/images/3.png",
      title: "Office Code",
      price: 499,
      description: aciklamaYazisi,
      size: 12,
      color: Color(0xFF864923)),
];
String aciklamaYazisi = "Reference site about Lorem Ipsum,\n"
    "giving information on its origins,\n"
    "as well as a random Lipsum generator.\n";
