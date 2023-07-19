import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class SliderScreen extends StatefulWidget {
  const SliderScreen({super.key});

  @override
  State<SliderScreen> createState() => _SliderScreenState();
}

class _SliderScreenState extends State<SliderScreen> {
  
  List imageList = [
    {"id":1, "image_path": 'assets/images/slider1.png'},
    {"id":2, "image_path": 'assets/images/slider2.png'},
    {"id":3, "image_path": 'assets/images/slider3.png'},
    {"id":4, "image_path": 'assets/images/slider4.png'},
    {"id":5, "image_path": 'assets/images/slider5.png'},
    {"id":6, "image_path": 'assets/images/slider6.png'},
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
                    fit: BoxFit.cover,
                    width: double.infinity,
                  )
                ).toList(),
                carouselController: cc, 
                options: CarouselOptions(
                  scrollPhysics: BouncingScrollPhysics(),
                  autoPlay: false,
                  aspectRatio: 2,
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