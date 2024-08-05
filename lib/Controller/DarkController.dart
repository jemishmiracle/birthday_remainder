
import 'package:get/get.dart';
import 'package:birthday_remainder/Utils/HiveStoreUtil.dart';

class DarkController extends GetxController{
  bool isDarkMode = false;

  @override
  void onInit() {
    isDarkMode = HiveStoreUtil.getBool(HiveStoreUtil.darkModeKey);
    update();
    super.onInit();
  }
}

