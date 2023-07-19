import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen2 extends StatefulWidget {
  const SliderScreen2({super.key});

  @override
  State<SliderScreen2> createState() => _SliderScreen2State();
}

class _SliderScreen2State extends State<SliderScreen2> {
  
  List imageList = [
    {"id":1, "image_path": 'assets/images/slider2_1.png'},
    {"id":2, "image_path": 'assets/images/slider2_2.png'},
    {"id":3, "image_path": 'assets/images/slider2_3.png'},
    {"id":4, "image_path": 'assets/images/slider2_4.png'},
    {"id":5, "image_path": 'assets/images/slider2_5.png'},
    {"id":6, "image_path": 'assets/images/slider2_6.png'},
  ];

  final CarouselController cc = CarouselController();
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Stack(
          children: [
            InkWell(
              onTap: () {
                
              },
              child: CarouselSlider(
                items: imageList.map(
                  (item) => Image.asset(
                    item['image_path'],
                    fit: BoxFit.contain,
                    width: double.infinity,
                  )
                ).toList(),
                carouselController: cc, 
                options: CarouselOptions(
                  scrollPhysics: BouncingScrollPhysics(),
                  autoPlay: false,
                  aspectRatio: 1.4,
                  viewportFraction: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                )
              ),
            )
          ],
        )
      ],
    );
  }
}