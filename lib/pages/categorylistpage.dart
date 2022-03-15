import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/helper/iconFontHelper.dart';
import 'package:grocery/models/category.dart';
import 'package:grocery/widgets/categorycard.dart';
import 'package:grocery/widgets/categoryicon.dart';
import 'package:grocery/widgets/iconfont.dart';

import '../helper/utils.dart';

class CategoryListPage extends StatelessWidget {
  List<Category>? categories = Utils.getMockedCategories();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: AppBar(
        title: IconFont(
          iconName: IconFontHelper.LOGO,
          color: AppColors.MAIN_COLOR,
          size: 40,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: const IconThemeData(
          color: AppColors.MAIN_COLOR,
        ),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 10),
            padding: const EdgeInsets.all(10),
            child: ClipOval(
              child: Image.asset('assets/imgs/me.jpg'),
            ),
          ),
        ],
      ),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                'Select a category',
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.black),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: categories!.length,
                itemBuilder: (BuildContext context, int index) {
                  return CategoryCard(category: categories![index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
