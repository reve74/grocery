import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/helper/iconFontHelper.dart';
import 'package:grocery/pages/categorylistpage.dart';
import 'package:grocery/pages/onboardingpage.dart';
import 'package:grocery/widgets/themebutton.dart';

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
                    'assets/imgs/of_main_bg.png',
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
                  ThemeButton(
                      label: 'Start Now!',
                      highlight: Colors.green[900],
                      color: AppColors.MAIN_COLOR,
                      onClick: () {}),
                  ThemeButton(
                      label: 'Hacer Onboarding',
                      highlight: Colors.green[900],
                      color: AppColors.DARK_GREEN,
                      onClick: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => OnboardingPage()));
                      }),
                  ThemeButton(
                    label: 'Login',
                    labelColor: AppColors.MAIN_COLOR,
                    color: Colors.transparent,
                    highlight: AppColors.MAIN_COLOR.withOpacity(0.5),
                    borderColor: AppColors.MAIN_COLOR,
                    borderWidth: 4,
                    onClick: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryListPage()));
                    },
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
