import 'package:flutter/material.dart';
import 'package:myntra_clone/widgets/bottom_insider.dart';
import 'package:myntra_clone/widgets/goal_criteria.dart';
import 'package:myntra_clone/widgets/rewards.dart';

// https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/4/19/4c42b837-58a8-48c7-ac22-5ff958622d381618836715619-Kiara-Advani-2x-min.png

class MyntraInsider extends StatefulWidget {
  const MyntraInsider({super.key});

  @override
  State<MyntraInsider> createState() => _MyntraInsiderState();
}

class _MyntraInsiderState extends State<MyntraInsider> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text("Myntra", style: TextStyle(color: Colors.black, fontSize: 16),),
        actions: <Widget>[
          Padding(padding: EdgeInsets.zero),
          IconButton(onPressed: (){}, icon: Icon(Icons.search), padding: EdgeInsets.zero),
          IconButton(onPressed: (){}, icon: Icon(Icons.favorite_border_outlined), padding: EdgeInsets.all(0)),
          IconButton(onPressed: (){}, icon: Icon(Icons.shopping_bag_outlined), padding: EdgeInsets.zero)
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          decoration: BoxDecoration(color: Colors.black87),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network('https://assets.myntassets.com/f_webp,dpr_1.5,q_auto,w_400,c_limit,fl_progressive/assets/images/retaillabs/2021/4/19/4c42b837-58a8-48c7-ac22-5ff958622d381618836715619-Kiara-Advani-2x-min.png'),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Text("Become An INSIDER!", style: TextStyle(color: Colors.amber.shade600, fontSize: 22, fontWeight: FontWeight.bold),),
                    ),
                    Text("Join the Insider programme and earn Supercoins\nwith every purchase and much more. Log in now!", style: TextStyle(color: Colors.grey, fontSize: 17),),
                    SizedBox(height: 24,),
                    Text("New Goal Cirteria", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),),
                    GoalCriteria(),
                    SizedBox(height: 14,),
                    Text("Note: Recent purchases will only reflect in the goal once the return window is over", style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 32,),
                    Text("Benefits Of Joining The Program", style: TextStyle(color: Colors.amber.shade600, fontSize: 22, fontWeight: FontWeight.bold),),
                    SizedBox(height: 20,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(child: Image.network('https://assets.myntassets.com/assets/images/retaillabs/2021/5/27/3e765afa-de7c-44dd-9379-5c12e7a5c6971622109794253-Early-access-to-sale-3x--1-.png', fit: BoxFit.contain,)),
                          SizedBox(width: 10,),
                          Text("Early Access to The Sales", style: TextStyle(color: Colors.white), textScaleFactor: 1.2,),
                        ],
                      ),
                    ),
                    Divider(color: Colors.grey,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(child: Image.network('https://assets.myntassets.com/assets/images/retaillabs/2021/5/27/8cb20882-94ba-464f-9d76-0a4004a52fbe1622110065196-Slice-26-3x.png')),
                          SizedBox(width: 10,),
                          Text("Insider Exclusive Rewards & Benifits", style: TextStyle(color: Colors.white), textScaleFactor: 1.2,),
                        ],
                      ),
                    ),
                    Divider(color: Colors.grey,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        children: [
                          CircleAvatar(child: Image.network('https://assets.myntassets.com/assets/images/retaillabs/2021/5/27/7e042b1c-9d95-4b99-bf14-ef76129870e91622110123552-Slice-26-3x.png')),
                          SizedBox(width: 10,),
                          Text("Priority Customer Support", style: TextStyle(color: Colors.white), textScaleFactor: 1.2,),
                        ],
                      ),
                    ),
                    SizedBox(height: 32,),
                    Text("How does it work", style: TextStyle(color: Colors.amber.shade600, fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 16,),
                    Text("Earn SuperCoins with every purchase.\nYou can get upto 3 SuperCoins for every ₹100 spent", style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 16,),
                    Container(
                      decoration: BoxDecoration(color: Colors.blueGrey.shade800),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Image.network('https://assets.myntassets.com/assets/images/retaillabs/2021/8/23/c6ad63ed-3ede-479a-bd90-1a9e10d1ec2b1629703772595-t-2x.png'),
                          ),
                          Container(
                            decoration: BoxDecoration(color: Colors.blueGrey.shade900,),
                            child: Row(
                              children: [
                                SizedBox(width: 16,),
                                CircleAvatar(child: Image.network('https://assets.myntassets.com/assets/images/retaillabs/2021/5/27/1ff784f4-042a-430e-8b0e-acbb8d9d365e1622110908935-Upgrade-3x.png'),),
                                SizedBox(width: 4,),
                                Text("Shop on Myntra to Upgrade your tier", style: TextStyle(color: Colors.white, fontSize: 12),)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 32,),
                    Text("Rewards", style: TextStyle(color: Colors.amber.shade600, fontSize: 18, fontWeight: FontWeight.bold),),
                    SizedBox(height: 16,),
                    Text("Use your SuperCoins to get exciting rewards", style: TextStyle(color: Colors.grey),),
                    SizedBox(height: 18,),
                    RewardsCard(),
                    SizedBox(height: 18,),
                    Container(
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset('assets/images/myntra.png', scale: 1.5,),
                              SizedBox(width: 6,),
                              Image.network('https://assets.myntassets.com/assets/images/retaillabs/2021/7/13/fd694523-c75d-46ac-babc-27d94e7807ab1626184638366-Slice-30-3x.png', scale: 3,)
                            ],
                          ),
                          Text("Fashion Advice | VIP Access | Extra Savings", style: TextStyle(color: Colors.grey, fontSize: 10),)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomBar(),
    );
  }
}