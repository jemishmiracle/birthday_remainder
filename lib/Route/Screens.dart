
import 'package:get/get.dart';
import 'package:birthday_remainder/Route/Routes.dart';
import 'package:birthday_remainder/Screens/SplashPage.dart';
import '../Screens/MainPage.dart';


class Screens{

  static final routes = [
    GetPage(name: Routes.splashScreen, page: () =>  SplashPage(),),
  ];

}