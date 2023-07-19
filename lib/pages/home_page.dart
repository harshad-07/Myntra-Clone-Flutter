import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/widgets/all_time_fav.dart';
import 'package:myntra_clone/widgets/circles.dart';
import 'package:myntra_clone/utils/drawer.dart';
import 'package:myntra_clone/widgets/featured_selection.dart';
import 'package:myntra_clone/widgets/fetured_brands.dart';
import 'package:myntra_clone/widgets/highlights_of_the_day.dart';
import 'package:myntra_clone/widgets/shopping_cards.dart';
import 'package:myntra_clone/widgets/slider.dart';
import 'package:myntra_clone/widgets/slider2.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  
  final categoriesList = [
    "CATEGORIES", "MEN", "WOMEN", "KIDS", "FOOTWARE", "BEAUTY", "ACCESSORIES", "HOME", "JEWELLERY", "HOT TRENDS", "STUDIO", "GIFT CARDS"
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Image.asset("assets/images/myntra.png"),
        actions: <Widget>[
          Padding(padding: EdgeInsets.zero),
          IconButton(onPressed: (){}, icon: Icon(Icons.install_mobile), padding: EdgeInsets.all(0),),
          IconButton(onPressed: (){}, icon: Icon(Icons.search), padding: EdgeInsets.zero),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined), padding: EdgeInsets.all(0)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined), padding: EdgeInsets.zero)
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 110,
              width: 400,
              child: CategoriesCircle()
            ),
            Image.asset("assets/images/banner1.png"),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black, minimumSize: Size(400, 30), padding: EdgeInsets.zero),
              onPressed: (){}, 
              label: Text('Sign Up For Exciting Deals!', style: TextStyle(fontWeight: FontWeight.w400),),
              icon: Icon(Icons.arrow_circle_right),
              // child: Text('Sign Up For Exciting Deals!')
            ),
            SizedBox(height: 10,),
            SliderScreen(),
            Row(
              children: [
                SizedBox(width: 9,),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, minimumSize: Size(40, 37)),
                  onPressed: (){}, 
                  icon: Icon(CupertinoIcons.checkmark_seal_fill),
                  label: Text('100% Original\nProducts', textScaleFactor: 0.8,),
                ),
                SizedBox(width: 5,),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, minimumSize: Size(40, 37)),
                  onPressed: (){}, 
                  icon: Icon(Icons.currency_rupee_rounded),
                  label: Text('Free Shipping\nOn 1st Order', textScaleFactor: 0.8,),
                ),
                SizedBox(width: 5,),
                ElevatedButton.icon(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.teal, minimumSize: Size(40, 37)),
                  onPressed: (){}, 
                  icon: Icon(Icons.local_shipping),
                  label: Text('Easy Returns\n& Refunds', textScaleFactor: 0.8,),
                ),
              ],
            ),
            Divider(thickness: 7,),
            SizedBox(height: 10,),
            Text("ALL-TIME FAVOURITES", textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),),
            SizedBox(height: 14,),
            Container(
              child: AllTimeFav(),
              height: 625,
            ),
            Divider(thickness: 7,),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("HIGHLIGHTS OF THE DAY", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),),
              ],
            ),
            SizedBox(height: 10,),
            Container(
              child: HighlightOTD()
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("FEATURED BRANDS", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ],
            ),
            Container(
              child: FeaturedBrands(),
            ),
            Image.asset("assets/images/donation_banner.png"),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 10,),
                Text("Featured Selection", textAlign: TextAlign.start, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),
              ],
            ),
            FeaturedSelection(),
            SizedBox(height: 10,),
            SliderScreen2(),
            Divider(thickness: 7,),
            SizedBox(height: 10,),
            Container(
              height: 1400,
              child: ShoppingCard()
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.black, minimumSize: Size(400, 50), padding: EdgeInsets.all(8)),
              onPressed: (){}, 
              child: Text("View More Products" , style: TextStyle(fontSize: 18),)
            ),
            SizedBox(height: 8,)
          ],
        ),
      ),
      drawer: MyDrawer(),
    );
  }
}