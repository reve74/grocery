import 'package:flutter/material.dart';
import 'package:grocery/pages/categorylistpage.dart';
import 'package:grocery/pages/splash.dart';
import 'package:grocery/pages/welcomepage.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(fontFamily: 'Raleway'),
      debugShowCheckedModeBanner: false,
      home: CategoryListPage()//SplashPage(duration: 3, goToPage: WelcomePage()),
    ),
  );
}
