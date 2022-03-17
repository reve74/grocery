import 'package:flutter/material.dart';
import 'package:grocery/helper/utils.dart';
import 'package:grocery/pages/categorylistpage.dart';
import 'package:grocery/pages/detailspage.dart';
import 'package:grocery/pages/onboardingpage.dart';
import 'package:grocery/pages/selectedcategorypage.dart';
import 'package:grocery/pages/splash.dart';
import 'package:grocery/pages/welcomepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      debugShowCheckedModeBanner: false,
      home: SplashPage(duration: 3, goToPage: WelcomePage()),//DetailsPage(subCategory: Utils.getMockedCategories()[0].subCategories![0]) //
    ),
  );
}
