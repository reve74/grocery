import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/helper/iconFontHelper.dart';
import 'package:grocery/helper/utils.dart';
import 'package:grocery/models/onboardingcontent.dart';
import 'package:grocery/pages/categorylistpage.dart';
import 'package:grocery/widgets/iconfont.dart';
import 'package:grocery/widgets/mainappbar.dart';
import 'package:grocery/widgets/themebutton.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({Key? key}) : super(key: key);

  @override
  _OnboardingPageState createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  List<OnboardingContent> _content = Utils.getOnboarding();
  int pageIndex = 0;
  PageController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
  }

  @override
  void dispose() {
    super.dispose();
    _controller?.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppBar(),
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: PageView(
                controller: _controller,
                onPageChanged: (int page) {
                  setState(() {
                    pageIndex = page;
                  });
                },
                children: List.generate(
                  _content.length,
                  (index) => Container(
                    padding: EdgeInsets.all(30),
                    margin: EdgeInsets.only(
                        left: 40, right: 40, top: 40, bottom: 10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(50),
                      boxShadow: [
                        BoxShadow(
                          color: AppColors.MAIN_COLOR.withOpacity(0.3),
                          blurRadius: 20,
                          offset: Offset.zero,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Expanded(
                          child: Column(
                            children: [
                              Align(
                                alignment: Alignment.topRight,
                                child: IconFont(
                                  color: AppColors.MAIN_COLOR,
                                  iconName: IconFontHelper.LOGO,
                                  size: 40,
                                ),
                              ),
                              Image.asset(
                                  'assets/imgs/${_content[index].img}.png'),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                _content[index].message!,
                                textAlign: TextAlign.center,
                                style: const TextStyle(
                                  color: AppColors.MAIN_COLOR,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Visibility(
                          visible: index == _content.length - 1,
                          child: ThemeButton(
                            onClick: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => CategoryListPage()));
                            },
                            label: 'Start Now!',
                            color: AppColors.DARK_GREEN,
                            highlight: AppColors.DARKER_GREEN,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                _content.length,
                (index) => GestureDetector(
                  onTap: () {
                    _controller!.animateTo(
                        MediaQuery.of(context).size.width * index,
                        duration: Duration(milliseconds: 500),
                        curve: Curves.easeInOut);
                  },
                  child: Container(
                    width: 20,
                    height: 20,
                    margin: EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      color: AppColors.MAIN_COLOR,
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(
                          width: 6,
                          color: pageIndex == index
                              ? Color(0xFFC1E09E)
                              : Theme.of(context).canvasColor),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ThemeButton(
              label: 'Saltar Onboarding',
              onClick: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => CategoryListPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
