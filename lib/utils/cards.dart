import 'package:flutter/material.dart';

class MyCards extends StatelessWidget {
  
  late final List imageList;
  final double height;

  MyCards({required this.imageList, required this.height});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: height,
            child: ListView.separated(
              separatorBuilder: (context, index) => SizedBox(width: 7,),
              itemCount: imageList.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index){
                return Container(
                  child: Expanded(child: Image.asset(imageList[index], fit: BoxFit.contain,)),
                );
            }),
          )
        ],
      ),
    );
  }
}