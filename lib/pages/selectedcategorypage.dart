import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/helper/iconFontHelper.dart';
import 'package:grocery/models/category.dart';
import 'package:grocery/pages/detailspage.dart';
import 'package:grocery/widgets/categoryicon.dart';
import 'package:grocery/widgets/iconFont.dart';
import 'package:grocery/widgets/mainappbar.dart';

class SelectedCategoryPage extends StatelessWidget {
  Category? selectedCategory;

  SelectedCategoryPage({this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CategoryIcon(
                color: selectedCategory!.color,
                iconName: selectedCategory!.icon,
              ),
              const SizedBox(
                width: 10,
              ),
              Text(
                selectedCategory!.name!,
                style: TextStyle(color: selectedCategory!.color!, fontSize: 20),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              children: List.generate(
                selectedCategory!.subCategories!.length,
                (index) {
                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context, MaterialPageRoute(
                          builder: (context) =>
                              DetailsPage(
                                  subCategory: selectedCategory!.subCategories![index]
                              )
                      ));
                    },
                    child: Column(
                      children: [
                        ClipOval(
                          child: Image.asset(
                            'assets/imgs/' +
                                selectedCategory!
                                    .subCategories![index].imgName! +
                                '.png',
                            width: 100,
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          selectedCategory!.subCategories![index].name!,
                          style: TextStyle(color: selectedCategory!.color),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
