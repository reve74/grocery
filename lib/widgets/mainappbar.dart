import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/helper/iconFontHelper.dart';
import 'package:grocery/widgets/iconFont.dart';

class MainAppBar extends StatefulWidget implements PreferredSizeWidget {

  Color? themeColor;
  MainAppBar({this.themeColor=AppColors.MAIN_COLOR});

  @override
  _MainAppBarState createState() => _MainAppBarState();

  @override
  Size get preferredSize => Size.fromHeight(80);
  
}

class _MainAppBarState extends State<MainAppBar> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: IconFont(
        iconName: IconFontHelper.LOGO,
        color: widget.themeColor,
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
    );
  }
}
