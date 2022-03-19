import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/models/categorypart.dart';
import 'package:grocery/models/subcategory.dart';
import 'package:grocery/pages/mappage.dart';
import 'package:grocery/widgets/categoryicon.dart';
import 'package:grocery/widgets/categorypartslist.dart';
import 'package:grocery/widgets/mainappbar.dart';
import 'package:grocery/widgets/themebutton.dart';
import 'package:grocery/widgets/unitpricewidget.dart';

class DetailsPage extends StatefulWidget {
  SubCategory? subCategory;


  DetailsPage({this.subCategory});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(50),
              ),
              child: Stack(
                children: [
                  Container(
                    height: 230,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/imgs/' +
                              widget.subCategory!.imgName! +
                              '_desc.png'),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Positioned.fill(
                    child: Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [
                            Colors.black.withOpacity(0.6),
                            Colors.transparent
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CategoryIcon(
                            color: widget.subCategory!.color,
                            iconName: widget.subCategory!.icon,
                            size: 50,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: [
                              Text(
                                'Carne de cerdo',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 20),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              Container(
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: widget.subCategory!.color,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Text(
                                  '\$50.00 / lb',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 80,
                    child: Container(
                      padding: EdgeInsets.only(
                          top: 5, left: 15, right: 15, bottom: 5),
                      decoration: BoxDecoration(
                          color: AppColors.MAIN_COLOR,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.5),
                              blurRadius: 20,
                              offset: Offset.zero,
                            )
                          ]),
                      child: Row(
                        children: [
                          Text(
                            '3',
                            style: TextStyle(color: Colors.white, fontSize: 15),
                          ),
                          Icon(
                            Icons.shopping_cart,
                            color: Colors.white,
                            size: 15,
                          ),
                        ],
                      ),
                    ),
                  ),
                  MainAppBar(themeColor: Colors.white),
                ],
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    CategoryPartsList(subCategory: widget.subCategory),
                    UnitPriceWidget(),
                    ThemeButton(
                        label: 'Add to Cart',
                        icon: Icon(Icons.shopping_cart, color: Colors.white,),
                        onClick: () {

                        }),
                    ThemeButton(
                        label: 'Location of Product',
                        icon: Icon(Icons.location_pin, color: Colors.white,),
                        color: AppColors.DARK_GREEN,
                        highlight: AppColors.DARKER_GREEN,
                        onClick: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => MapPage()));
                        }),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
