import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';

class CategoryBottomBar extends StatelessWidget {
  const CategoryBottomBar({Key? key}) : super(key: key);

  Widget _navigator(IconData? icon) {
    return ClipOval(
      child: Material(
        child: IconButton(
          onPressed: () {},
          icon: Icon(icon, color: AppColors.MAIN_COLOR,),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
                blurRadius: 20,
                color: Colors.black.withOpacity(0.2),
                offset: Offset.zero
            )
          ]
      ),
      height: MediaQuery
          .of(context)
          .size
          .height * 0.1,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _navigator(Icons.favorite),
          _navigator(Icons.shopping_cart),
          _navigator(Icons.pin_drop),
          _navigator(Icons.settings),
        ],
      ),
    );
  }
}
