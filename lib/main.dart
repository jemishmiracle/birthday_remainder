import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:birthday_remainder/Controller/DarkController.dart';
import 'package:birthday_remainder/Screens/Theme/ThemeData.dart';
import 'package:birthday_remainder/custom_elements/custom_elements.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'Route/Screens.dart';
import 'Route/Routes.dart';
import 'Utils/HiveStoreUtil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox('BirthDayRemainder');

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  DarkController controller = Get.put(DarkController());

  @override
  Widget build(BuildContext context) {
    return GetBuilder<DarkController>(builder: (controller) {
      return Sizer(
          builder: (context,orientation,deviceType) {
            return GetMaterialApp(
              title: 'BirthDayRemainder',
              theme: AppTheme.lightTheme,
              darkTheme: AppTheme.darkTheme,
              themeMode: HiveStoreUtil.getBool(HiveStoreUtil.darkModeKey) ? ThemeMode.dark : ThemeMode.light,
              debugShowCheckedModeBanner: false,
              builder: EasyLoading.init(),
              getPages: Screens.routes,
              initialRoute: Routes.splashScreen,
            );
          }
      );
    },);
  }
}
