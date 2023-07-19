import 'package:flutter/material.dart';
import 'package:myntra_clone/utils/cards.dart';

class FeaturedBrands extends StatefulWidget {

  @override
  State<FeaturedBrands> createState() => _FeaturedBrandsState();
}

class _FeaturedBrandsState extends State<FeaturedBrands> {
  List imageList = [
    "assets/images/featured1.png",
    "assets/images/featured2.png",
    "assets/images/featured3.png",
    "assets/images/featured4.png",
    "assets/images/featured5.png",
  ];

  @override
  Widget build(BuildContext context) {
    return MyCards(imageList: imageList, height: 300,);
  }
}