// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class Products {
  final String urlImage;
  final String title;
  final String type;
  final int price;
  final int prevPrice;
  final int disc;

  const Products({
    required this.urlImage,
    required this.title,
    required this.type,
    required this.price,
    required this.prevPrice,
    required this.disc,
  });

}

class ShoppingCard extends StatelessWidget {
  ShoppingCard({super.key});

  final List<Products> items = [
    Products(
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrNXSaC-RJzabh_C4G9GeHb-P5RXtoLRnFOw&usqp=CAU", 
      title: "Khushal K", 
      type: "Kurta Sets", 
      price: 1634, 
      prevPrice: 5549, 
      disc: 70
    ),
    Products(
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQpoLeCFSr0OCffrrjLW3WNq_17jLS70-9_gQ&usqp=CAU", 
      title: "Monore", 
      type: "Kurta Sets", 
      price: 1276, 
      prevPrice: 4489, 
      disc: 65
    ),
    Products(
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvfrif0U9Xd2cjlUBCIzdDUjGuplsPcVzewQ&usqp=CAU", 
      title: "Puma", 
      type: "Shoes", 
      price: 899, 
      prevPrice: 1999, 
      disc: 60
    ),
    Products(
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXc4Ql2jr4axcmQ_sT0kgUlC4aaNWGF2OYYg&usqp=CAU", 
      title: "Raymond", 
      type: "Shirts", 
      price: 1299, 
      prevPrice: 3389, 
      disc: 65
    ),
    Products(
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUURDijWSXIXqTlgfeKbd99ipG-ntkS8jQ-w&usqp=CAU", 
      title: "Levi", 
      type: "Jeans", 
      price: 1999, 
      prevPrice: 4468, 
      disc: 70
    ),
    Products(
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTvalz9Xe8Xm4VMqL14m_X7uLJuW818EhWUxA&usqp=CAU", 
      title: "Crocs", 
      type: "Footware", 
      price: 799, 
      prevPrice: 2999, 
      disc: 75
    ),
    Products(
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSCvPlIQNgOpRAO7amzWciws8J4s1zDROIjPg&usqp=CAU", 
      title: "Campus", 
      type: "Shoes", 
      price: 1299, 
      prevPrice: 3387, 
      disc: 70
    ),
    Products(
      urlImage: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSk-GTVb-ZMIbU_MB3jmyQIxqRus1jWzFYHsw&usqp=CAU", 
      title: "Manya", 
      type: "Saree", 
      price: 1634, 
      prevPrice: 5549, 
      disc: 70
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: items.length,
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2, childAspectRatio: 1/1.7,),
      itemBuilder: (BuildContext context, int index) { 
        return ProductCard(items: items[index]);
       },
    );
  }
}

Widget ProductCard({required Products items}) {
  return Container(
          child: Column(
            children: [
              Container(
                height: 250,
                child: Image.network(items.urlImage, fit: BoxFit.cover,),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(items.title, style: TextStyle(fontWeight: FontWeight.bold),),
                        SizedBox(height: 2,),
                        Text(items.type, style: TextStyle(fontWeight: FontWeight.w300)),
                        SizedBox(height: 2,),
                        Row(
                          children: [
                            Text('\u{20B9} ${items.price}', ),
                            Text(' \u{20B9} ${items.disc}', style: TextStyle(fontWeight: FontWeight.w300, decoration: TextDecoration.lineThrough, fontSize: 12)),
                          ],
                        ),
                        SizedBox(height: 2,),
                        Text("${items.disc}% OFF", style: TextStyle(color: Color(0xfffe416c)),)
                      ],
                    ),
                    IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border))
                  ],
                ),
              )
            ],
          ),
        );
}
