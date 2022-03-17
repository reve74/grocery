import 'package:grocery/helper/appcolors.dart';
import 'package:grocery/helper/iconFontHelper.dart';
import 'package:grocery/models/category.dart';
import 'package:grocery/models/categorypart.dart';
import 'package:grocery/models/onboardingcontent.dart';
import 'package:grocery/models/subcategory.dart';

class Utils {
  static List<OnboardingContent> getOnboarding() {
    return [
      OnboardingContent(
          message: 'Productos\nfrescos, de la\ntierra a su mesa',
          img: 'onboard1'
      ),
      OnboardingContent(
          message: 'Carnes y embutidos\nfrescos y saludables\npara su deleite',
          img: 'onboard2'
      ),
      OnboardingContent(
          message: 'Adquiéralos desde\nla comodidad de su\ndispositivo móbil',
          img: 'onboard3'
      )
    ];
  }

  static List<Category> getMockedCategories() {
    return [
      Category(
        color: AppColors.MEATS,
        name: "Meats",
        imgName: "cat1",
        icon: IconFontHelper.MEATS,
        subCategories: [
          SubCategory(
            color: AppColors.MEATS,
            name: "Cerdo",
            imgName: "cat1_1",
            icon: IconFontHelper.MEATS,
              parts: [
                CategoryPart(
                    name: 'Jamon',
                    imgName: 'cat1_1_p1',
                    isSelected: false
                ),
                CategoryPart(
                    name: 'Patas',
                    imgName: 'cat1_1_p2',
                    isSelected: false
                ),
                CategoryPart(
                    name: 'Tocineta',
                    imgName: 'cat1_1_p3',
                    isSelected: false
                ),
                CategoryPart(
                    name: 'Lomo',
                    imgName: 'cat1_1_p4',
                    isSelected: false
                ),
                CategoryPart(
                    name: 'Costillas',
                    imgName: 'cat1_1_p5',
                    isSelected: false
                ),
                CategoryPart(
                    name: 'Panza',
                    imgName: 'cat1_1_p6',
                    isSelected: false
                )
              ]
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Gallina",
            imgName: "cat1_2",
            icon: IconFontHelper.MEATS,
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Vaca",
            imgName: "cat1_3",
            icon: IconFontHelper.MEATS,
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Pavo",
            imgName: "cat1_4",
            icon: IconFontHelper.MEATS,
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Chivo",
            imgName: "cat1_5",
            icon: IconFontHelper.MEATS,
          ),
          SubCategory(
            color: AppColors.MEATS,
            name: "Conejo",
            imgName: "cat1_6",
            icon: IconFontHelper.MEATS,
          ),
        ],
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
