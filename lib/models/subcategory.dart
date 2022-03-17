import 'dart:ui';

import 'package:grocery/models/category.dart';
import 'package:grocery/models/categorypart.dart';
class SubCategory extends Category {

  List<CategoryPart>? parts;

  SubCategory({
    this.parts,
    String? name,
    String? icon,
    Color? color,
    String? imgName,

  }): super(
    name: name,
    icon: icon,
    color: color,
    imgName: imgName
  );
}