import 'package:flutter/material.dart';

class RewardsCard extends StatefulWidget {
  const RewardsCard({super.key});

  @override
  State<RewardsCard> createState() => _RewardsCardState();
}

class _RewardsCardState extends State<RewardsCard> {

  List imageList = [
    "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/74e9ae39-2302-42e7-ad8c-917e51b2206c1630656211389-Get-Myntra-Voucher-worth-Rs.500.jpg",
    "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/4ef867c9-1129-4e3c-98c8-b67711845e421630656211382-Get-Leivs-Voucher-worth-Rs.-500.jpg",
    "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/935ad8e3-121b-41d1-abd1-1200ad4dda531630656211396-Get-SonyLiv-Premium-1-Month-Subscription.jpg",
    "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/ad73203d-eadf-4539-afff-8d9de0f121d61630656211403-Get-Tokyo-Talkies-Voucher-worth-Rs.400.jpg",
    "https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/9/3/258492c4-99f1-4a49-a416-c6e26303d82c1630656211377-Get-FLAT-12--OFF-on-Flipkart-Flight--Bookings.jpg",
  ];

  List<String> title = [
    "Get Myntra Voucher worth Rs.500",
    "Get Levi's Voucher worth Rs.500",
    "Get SonyLiv Premium 1 month\nSubscription",
    "Get Tokyo Talkies Voucher worth Rs. 400",
    "Get FLAT 12% OFF on Flipkart Flight\nBookings",
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 250,
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(width: 7,),
          itemCount: imageList.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index){
            return Container(
              decoration: BoxDecoration(color: Colors.white),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Image.network(imageList[index], fit: BoxFit.contain,)
                  ),
                  Container(
                    height: 70,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(8, 20, 0, 0),
                      child: Text(title[index], style: TextStyle(fontWeight: FontWeight.bold, ), ),
                    )
                  ),
                ],
              ),
            );
        }),
      ),
    );
  }
}