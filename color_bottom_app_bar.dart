import 'package:flutter/material.dart';
import 'color_container.dart';
import '/color_list.dart';

class ColorBottomAppBar extends StatelessWidget {
  var nullColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: Colors.grey.shade300,
      padding: EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ColorContainer(),
          ColorContainer(),
          ColorContainer(),
          ColorContainer(),
          ColorContainer(),
          GestureDetector(
            onTap: () => ColorContainer(),
            child: Icon(
              Icons.close,
              size: 30.0,
            ),
          ),
        ],
      ),
    );
  }
}
