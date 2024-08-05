import 'package:birthday_remainder/Constants/image_path.dart';
import 'package:birthday_remainder/customElement/custom_elements.dart';
import 'package:birthday_remainder/widget/custom_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:birthday_remainder/Route/routes.dart';
import '../Utils/HiveStoreUtil.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {

  void initState() {
    Future.delayed(const Duration(seconds: 2),() {
        Get.offNamed(Routes.mainScreen);
    },);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: CustomColors.btnColor,
        child: Center(
          child:CustomImage(
            ImagePath.imgLogo,
            height: 200,
          ),
        ),
      ),
    );
  }
}
