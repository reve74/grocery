import 'package:flutter/material.dart';
import 'package:grocery/helper/appcolors.dart';

class MapUserBadge extends StatelessWidget {

  MapUserBadge({this.isSelected});

  bool? isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      padding: const EdgeInsets.all(12),
      margin: EdgeInsets.only(top: 10, bottom: 10, left: 20, right: 20),
      decoration: BoxDecoration(
        color: isSelected! ? AppColors.MAIN_COLOR : Colors.white,
        borderRadius: BorderRadius.circular(100),
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.2),
              blurRadius: 10,
              offset: Offset.zero
          ),
        ],
      ),
      child: Row(
        children: [
          Container(
            width: 40,
            height: 40,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: AssetImage('assets/imgs/me.jpg'),
                fit: BoxFit.cover,
              ),
              border: Border.all(
                color: isSelected! ? Colors.white : AppColors.MAIN_COLOR, width: 1,),
            ),
          ),
          SizedBox(
            width: 10,
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Roman Jaquez',
                  style: TextStyle(
                    color: isSelected! ? Colors.white : Colors.grey,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  'My Location',
                  style: TextStyle(color: isSelected! ? Colors.white : AppColors.MAIN_COLOR),
                ),
              ],
            ),
          ),
          Icon(
            Icons.location_pin,
            color: isSelected! ? Colors.white :AppColors.MAIN_COLOR,
          ),
        ],
      ),
    );
  }
}
