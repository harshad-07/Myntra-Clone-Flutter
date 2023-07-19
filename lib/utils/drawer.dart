// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_const_declarations

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:myntra_clone/pages/myntra_insider.dart';
// import 'package:myntra_clone/utils/custom_list_tile.dart';

class MyDrawer extends StatefulWidget {
  const MyDrawer({super.key});

  @override
  State<MyDrawer> createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  @override
  Widget build(BuildContext context) {
    // final imageURL = "";
    return Drawer(
      child: Container(
        // decoration: BoxDecoration(color: Colors.blue),
        color: Colors.white,
        child: ListView(
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: Text(" "),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/navImage.png")
                )
              ),
            ),
            // CustomListTile(),
            ListTile(
              contentPadding: EdgeInsets.fromLTRB(18, 0, 16, 0),
              splashColor: Color(0xfffe416c),
              onTap: (){},
              title: Text("Men", style: TextStyle(color: Colors.black),textScaleFactor: 1.05,),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
            ListTile(
              title: Text("Women", style: TextStyle(color: Colors.black),textScaleFactor: 1.05,),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
            ListTile(
              title: Text("Kids", style: TextStyle(color: Colors.black),textScaleFactor: 1.05,),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
            ListTile(
              title: Text("Home & Living", style: TextStyle(color: Colors.black),textScaleFactor: 1.05,),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),
            ListTile(
              title: Text("Beauty", style: TextStyle(color: Colors.black),textScaleFactor: 1.05,),
              trailing: Icon(Icons.keyboard_arrow_right_outlined),
            ),

            Divider(thickness: 1.05,),
            
            ListTile(
              title: Text("Myntra Studio", style: TextStyle(color: Colors.grey.shade700)),
            ),
            ListTile(
              title: Text("Myntra Mall", style: TextStyle(color: Colors.grey.shade700)),
              onTap: () => print("pressed"),
            ),
            ListTile(
              
              title: Text("Myntra Insider", style: TextStyle(color: Colors.grey.shade700)),
              onTap: () {
                Navigator.pop(context); 
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => MyntraInsider())
                );
              }
            ),
            ListTile(
              title: Text("Gift Cards", style: TextStyle(color: Colors.grey.shade700)),
            ),
            ListTile(
              title: Text("Contact us", style: TextStyle(color: Colors.grey.shade700)),
            ),
            ListTile(
              title: Text("FAQs", style: TextStyle(color: Colors.grey.shade700)),
            ),
            ListTile(
              title: Text("Legal", style: TextStyle(color: Colors.grey.shade700)),
            ),
          ],
        ),
      ),
    );
  }
}