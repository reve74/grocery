import 'package:flutter/material.dart';

import 'iconFont.dart';

class CategoryIcon extends StatelessWidget {
  Color? color;
  String? iconName;
  double? size;
  double? padding;

  CategoryIcon({
    this.color,
    this.iconName,
    this.size = 30,
    this.padding = 10,
  });

  @override
  Widget build(BuildContext context) {
    return ClipOval(
      child: Container(
        color: color,
        padding: EdgeInsets.all(padding!),
        child: IconFont(
          size: size,
          color: Colors.white,
          iconName: iconName,
        ),
      ),
    );
  }
}
