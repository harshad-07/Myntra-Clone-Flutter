import 'package:flutter/material.dart';

class AllTimeFav extends StatelessWidget {
  AllTimeFav({super.key});

  final List images = [
    "assets/images/card1.png",
    "assets/images/card2.png",
    "assets/images/card3.png",
    "assets/images/card4.png",
    "assets/images/card5.png",
    "assets/images/card6.png",
    "assets/images/card7.png",
    "assets/images/card8.png",
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(7, 0, 7, 0),
          child: GridView.builder(
            shrinkWrap: true,
            padding: EdgeInsets.zero,
            physics: NeverScrollableScrollPhysics(),
            itemCount: images.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, crossAxisSpacing: 7,  mainAxisSpacing: 7, childAspectRatio: 1/0.7), 
            itemBuilder: (context, index){
              return Container(
                padding: EdgeInsets.zero,
                decoration: BoxDecoration(
                  border: Border.all(width: 0.2),
                  image: DecorationImage(
                    image: AssetImage(images[index]),
                    fit: BoxFit.contain,
                  )
                ),
              );
            }
          )
        ),
        ElevatedButton.icon(
          style: ElevatedButton.styleFrom(backgroundColor: Colors.black, minimumSize: Size(380, 30), padding: EdgeInsets.zero),
          onPressed: (){}, 
          label: Text('View All', style: TextStyle(fontWeight: FontWeight.w400),),
          icon: Icon(Icons.arrow_circle_right),
        ),
      ],
    );
  }
}