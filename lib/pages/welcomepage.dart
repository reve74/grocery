import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/helper/iconFontHelper.dart';
import 'package:grocery/pages/categorylistpage.dart';

import '../widgets/iconFont.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.black,
        child: Stack(
          children: [
            Positioned.fill(
              child: Opacity(
                  opacity: 0.3,
                  child: Image.asset(
                    'assets/img/of_main_bg.png',
                    fit: BoxFit.cover,
                  )),
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Center(
                    child: ClipOval(
                      child: Container(
                        width: 180,
                        height: 180,
                        color: const Color(0xFF80C038),
                        alignment: Alignment.center,
                        child: IconFont(
                          iconName: IconFontHelper.MAIN_LOGO,
                          color: Colors.white,
                          size: 130,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Welcome',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  const Text(
                    'Fresh Products. \n Healthy. In time',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: FlatButton(
                      onPressed: () {},
                      color: Color(0xFF80C038),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                      padding: EdgeInsets.all(25),
                      child: const Text(
                        'Start Now!',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Material(
                        color: Colors.transparent,
                        child: InkWell(
                          splashColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          highlightColor: AppColors.MAIN_COLOR.withOpacity(0.2),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => CategoryListPage(),
                              ),
                            );
                          },
                          child: Container(
                            padding: EdgeInsets.all(20),
                            child: const Text(
                              'Login',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 16,
                                color: Color(0xFF80C038),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: Colors.transparent,
                              border: Border.all(
                                color: const Color(0xFF80C038),
                                width: 4,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
