import 'package:flutter/material.dart';
import 'package:grocery/models/subcategory.dart';

class Category {
  String? name;
  String? icon;
  Color? color;
  String? imgName;
  List<SubCategory>? subCategories;

  Category(
      {
        this.name,
        this.icon,
        this.color,
        this.imgName,
        this.subCategories
      }
      );
}