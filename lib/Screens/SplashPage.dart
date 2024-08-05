import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:birthday_remainder/Route/Routes.dart';
import '../Utils/HiveStoreUtil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  // void initState() {
  //   Future.delayed(Duration(seconds: 5),() {
  //     if(HiveStoreUtil.getString(HiveStoreUtil.accessTokenKey).isEmpty){
  //         Get.offNamed(Routes.loginScreen);
  //     } else {
  //       Get.offNamed(Routes.mainScreen);
  //     }
  //   },);
  //   super.initState();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // LogoImageWidget(imgWidth: 40.w),
          ],
        ),
      ),
    );
  }
}
