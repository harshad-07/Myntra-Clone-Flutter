import 'package:flutter/material.dart';

class CustomListTile extends StatefulWidget {
  const CustomListTile({super.key});

  @override
  State<CustomListTile> createState() => _CustomListTileState();
}

class _CustomListTileState extends State<CustomListTile> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Color(0xfffe416c),
      onTap: (){},
      child: Container(
        child: Text("Home", textScaleFactor: 1.2, ),
      ),
    );
  }
}