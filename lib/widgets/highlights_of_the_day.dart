import 'package:flutter/material.dart';
import 'package:myntra_clone/utils/cards.dart';

class HighlightOTD extends StatefulWidget {

  @override
  State<HighlightOTD> createState() => _HighlightOTDState();
}

class _HighlightOTDState extends State<HighlightOTD> {
  List imageList = [
    "assets/images/highlight1.png",
    "assets/images/highlight2.png",
    "assets/images/highlight3.png",
    "assets/images/highlight4.png",
  ];

  // HighlightOTD({required this.imageList});
  @override
  Widget build(BuildContext context) {
    return MyCards(imageList: imageList, height: 200,);
  }
}