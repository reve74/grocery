import 'package:flutter/material.dart';
import 'package:grocery/models/category.dart';
import 'package:grocery/pages/selectedcategorypage.dart';
import 'package:grocery/widgets/categorybottombar.dart';
import 'package:grocery/widgets/categorycard.dart';
import 'package:grocery/widgets/mainappbar.dart';

import '../helper/utils.dart';

class CategoryListPage extends StatelessWidget {
  List<Category>? categories = Utils.getMockedCategories();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(),
      appBar: MainAppBar(),
      body: Container(
        child: Stack(
          children: [
            Column(
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
                    padding: EdgeInsets.only(bottom: 120),
                    itemCount: categories!.length,
                    itemBuilder: (BuildContext context, int index) {
                      return CategoryCard(
                        category: categories![index],
                        onCardClick: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      SelectedCategoryPage(
                                        selectedCategory: categories![index],
                                      )));
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: CategoryBottomBar(),
            ),
          ],
        ),
      ),
    );
  }
}
