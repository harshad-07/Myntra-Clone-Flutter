import 'package:flutter/material.dart';

class CirclesItems{
  final String image;
  final String title; 

  const CirclesItems({
    required this.image,
    required this.title
  });

}

class CategoriesCircle extends StatefulWidget {

  @override
  State<CategoriesCircle> createState() => _CategoriesCircleState();
}

class _CategoriesCircleState extends State<CategoriesCircle> {
  // final String text;
  List<CirclesItems> items = const[
    CirclesItems(
    image: 'https://cdn-icons-png.flaticon.com/512/2285/2285104.png',
    title: 'CATEGORIES'),
    CirclesItems(
    image: 'https://m.media-amazon.com/images/G/31/img23/Fashion/Event/JuneWRS/eventpage/HALOS/Men__unselected._SS210_QL85_FMpng_.png',
    title: 'MEN'),
    CirclesItems(
    image: 'https://images.meesho.com/images/marketing/1627307623737.png',
    title: 'WOMEN'),
    CirclesItems(
    image: 'https://s7ap1.scene7.com/is/image/bigw/W2539%20-%200203%20Kids%20Dept%20CTs_Boys%20Clothing%201-7?\$cms-max-image-threshold\$&fmt=png-alpha&wid=352&fit=hfit%2C1',
    title: 'KIDS'),
    CirclesItems(
    image: 'https://m.media-amazon.com/images/I/51eyP-QL6RL._SR210,210_FMpng_.png',
    title: 'FOOTWARE'),
    CirclesItems(
    image: 'https://lens-storage.storage.googleapis.com/png/1e2dc21083844fcd9156ba53b24fd3c7',
    title: 'BEAUTY'),
    CirclesItems(
    image: 'https://ir.ebaystatic.com/pictures/aw/pics/NAO-44695/hero_dt.png',
    title: 'ACCESSORIES'),
    CirclesItems(
    image: 'https://www.bicfurniture.com/wp-content/uploads/2023/02/c1-modified.png',
    title: 'HOME'),
    CirclesItems(
    image: 'https://frontierjewellersexclusive.com/jewellers/wp-content/uploads/2023/04/antique-jewellery.webp',
    title: 'JEWELLERY'),
    CirclesItems(
    image: 'https://www.koreanfashiontrends.com/wp-content/uploads/2022/06/Korean-Fashion-Trends-DENIM.png',
    title: 'HOT TRENDS'),
    CirclesItems(
    image: 'https://logowik.com/content/uploads/images/myntra-studio9336.jpg',
    title: 'STUDIO'),
    CirclesItems(
    image: 'https://assets.myntassets.com/dpr_1.5,q_60,w_400,c_limit,fl_progressive/h_373,q_80,w_280/v1/assets/images/1522209/2016/9/15/11473950956475-1-Rupee-Gift-Card-4561473950956433-1.jpg',
    title: 'GIFT CARDS'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 0,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 4,),
          itemCount: items.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Circles(items: items[index]);
          }
        ),
      ),
    );
  }
}

Widget Circles({
  required CirclesItems items,
}){
  return Container(

    child: Column(
      children: [
        Expanded(child: Image.network(items.image, fit: BoxFit.contain,)),
          SizedBox(height: 2,),
          Text(items.title, style: TextStyle(fontWeight: FontWeight.bold),),
      ],
    ),
  );
}