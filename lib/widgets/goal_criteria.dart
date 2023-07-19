import 'package:flutter/material.dart';

class GoalCriteria extends StatelessWidget {
  const GoalCriteria({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 20,),
        GoalCard(),
      ],
    );
  }
}

Widget GoalCard(){
  return Column(
    children: [
      Container(
        color: Colors.blueGrey.shade900,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/reward.png'),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("₹0", style: TextStyle(color: Colors.white, fontSize: 22),),
                        Text("You've Spent", style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("₹ 7000", style: TextStyle(color: Colors.white),),
                    SizedBox(height: 2,),
                    Text("Goal", style: TextStyle(color: Colors.grey),)
                  ],
                )
              ],
            ),
          ),
        ),
        SizedBox(height: 1,),
        Container(
          color: Colors.blueGrey.shade900,
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Image.asset('assets/images/reward.png'),
                    SizedBox(width: 20,),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("0/5", style: TextStyle(color: Colors.white, fontSize: 22),),
                        Text("Your Orders", style: TextStyle(color: Colors.grey),),
                      ],
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text("5", style: TextStyle(color: Colors.white),),
                    SizedBox(height: 2,),
                    Text("Goal", style: TextStyle(color: Colors.grey),)
                  ],
                )
              ],
            ),
          ),
        ),
    ],
  );
}