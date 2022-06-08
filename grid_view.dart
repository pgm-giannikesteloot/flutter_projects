import 'package:empty_flutter_project/color_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'color_container.dart';

class ColorGridView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      // color: Colors.red,
      // padding: EdgeInsets.only(top: 24.0),
      child: GridView(
        padding: EdgeInsets.all(10.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 5, mainAxisSpacing: 10, crossAxisSpacing: 10),
        // crossAxisSpacing: 5.0,
        // mainAxisSpacing: 5.0,
        children: [
          ColorContainer(),
          ColorContainer(),
          ColorContainer(),
          ColorContainer(),
          ColorContainer(),
          ColorContainer(),
        ],
      ),
    );
  }
}
