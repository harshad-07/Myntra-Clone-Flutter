import 'package:flutter/material.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.blueGrey.shade900),
      child: Padding(
        padding: const EdgeInsets.all(17.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(backgroundColor: Color(0xfffe416c), ),
                onPressed: (){}, 
                child: Text("LOG IN")
              ),
            ),
            Text("By enrolling you agree to", style: TextStyle(color: Colors.grey),),
            SizedBox(height: 4,),
            Text("Insider Terms & Conditions", style: TextStyle(color: Color(0xfffe416c)),),
          ],
        ),
      ),
    );
  }
}