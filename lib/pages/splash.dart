import 'package:flutter/material.dart';

import '../helper/iconFontHelper.dart';
import '../widgets/iconFont.dart';

class SplashPage extends StatelessWidget {
  int? duration = 0;
  Widget? goToPage;

  SplashPage({this.goToPage, this.duration});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: duration!), () {
      Navigator.push(
          context, MaterialPageRoute(builder: (context) => goToPage!));
    });

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: const Color(0xFF80C038),
        child: Center(
          child: IconFont(
            color: Colors.white,
            iconName: IconFontHelper.LOGO,
            size: 100,
          ),
        ),
      ),
    );
  }
}
