import 'package:flutter/material.dart';

import 'iconFont.dart';

class CategoryIcon extends StatelessWidget {
  Color? color;
  String? iconName;
  double? size;

  CategoryIcon({this.color, this.iconName, this.size = 30});

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: color,
        padding: const EdgeInsets.all(10),
        child: IconFont(
          size: size,
          color: Colors.white,
          iconName: iconName,
        ),
      ),
    );
  }
}
