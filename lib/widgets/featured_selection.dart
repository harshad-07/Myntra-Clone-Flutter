import 'package:flutter/material.dart';
import 'package:myntra_clone/utils/cards.dart';

class FeaturedSelection extends StatefulWidget {
  const FeaturedSelection({super.key});

  @override
  State<FeaturedSelection> createState() => _FeaturedSelectionState();
}

class _FeaturedSelectionState extends State<FeaturedSelection> {

  List featured =[
    "assets/images/selection1.png",
    "assets/images/selection2.png",
    "assets/images/selection3.png",
  ];

  @override
  Widget build(BuildContext context) {
    return MyCards(imageList: featured, height: 150,);
  }
}