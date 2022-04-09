import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;
  // static double factorialValueForContainer = screenHeight / 220;
  // static double factorialValueForTextContainer = screenHeight / 220;
  // use  heigth and width pageViewContainer
  static double pageView = screenHeight / 2.64;
  static double pageViewContainer = screenHeight / 3.84;
  static double pageViewTextContainer = screenHeight / 7.03;
  // 844 is screen Height in 10 pixel scale
  // 844/10  = 84.4
  static double height10 = screenHeight / 84.4;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28.13;
  static double height15 = screenHeight / 56.27;

  //font dynamic size

  static double font20 = screenHeight / 42.2;
  static double font15 = screenHeight / 56.27;
  static double font10 = screenHeight / 84.4;
  static double font18 = screenHeight / 46.88;
  static double font12 = screenHeight / 70.33;
  static double height45 = screenHeight / 18.75;
}
