import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/helper/iconFontHelper.dart';
import 'package:grocery/models/category.dart';

class Utils {
  static List<Category> getMockedCategories() {
    return [
      Category(
        color: AppColors.MEATS,
        name: "Meats",
        imgName: "cat1",
        icon: IconFontHelper.MEATS,
        subCategories: [],
      ),
      Category(
        color: AppColors.FRUITS,
        name: "Fruits",
        imgName: "cat2",
        icon: IconFontHelper.FRUITS,
        subCategories: [],
      ),
      Category(
        color: AppColors.VEGS,
        name: "Vegetables",
        imgName: "cat3",
        icon: IconFontHelper.VEGS,
        subCategories: [],
      ),
      Category(
        color: AppColors.SEEDS,
        name: "Seeds",
        imgName: "cat4",
        icon: IconFontHelper.SEEDS,
        subCategories: [],
      ),
      Category(
        color: AppColors.PASTRIES,
        name: "Pastries",
        imgName: "cat5",
        icon: IconFontHelper.PASTRIES,
        subCategories: [],
      ),
      Category(
        color: AppColors.SPICES,
        name: "Spices",
        imgName: "cat6",
        icon: IconFontHelper.SPICES,
        subCategories: [],
      ),
    ];
  }
}
