
import 'package:get/get.dart';
import 'package:birthday_remainder/Route/routes.dart';
import 'package:birthday_remainder/Screens/splash_page.dart';
import '../Screens/main_page.dart';


class Screens{

  static final routes = [
    GetPage(name: Routes.splashScreen, page: () =>  SplashPage(),),
    GetPage(name: Routes.mainScreen, page: () =>  MainPage(),),
  ];

}