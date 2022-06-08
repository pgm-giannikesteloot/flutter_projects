import 'package:flutter/material.dart';
import '/color_list.dart';

class ColorContainer extends StatelessWidget {
  // final Color color;
  // ColorContainer({required this.color});

  List<Color> colorList = [
    Color(
      color: Colors.blue,
    ),
    Color(
      color: Colors.green,
    ),
    Color(
      color: Colors.amber,
    ),
    Color(
      color: Colors.deepOrange,
    ),
    Color(
      color: Colors.deepPurple,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Container(
        height: 50.0,
        width: 50.0,
        margin: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0), color: Colors.red),
      ),
    );
  }
}
