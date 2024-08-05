import 'package:birthday_remainder/customElement/custom_elements.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../Route/routes.dart';

class DialogHelper {
  static DeleteConfirmationDialog(String title,String message,{required VoidCallback onYes,Color? bgColor,TextStyle? textStyle,Color? iconColor,Color? buttonColor}) {
    return Alert(
      context: Get.context!,
      type: AlertType.warning,
      style: AlertStyle(
        constraints: BoxConstraints(minHeight: 200),
        overlayColor: CustomColors.text,
        alertBorder: RoundedRectangleBorder(
            side: BorderSide(color: CustomColors.primary),
            borderRadius: BorderRadius.circular(10)),
        backgroundColor: bgColor ?? CustomColors.white,
        titleStyle: TextStyle(
          color: CustomColors.primary,
        ),
        // descStyle: TextStyle(color: textColor ?? CustomColors.textColor1,fontSize: 16),
        descStyle:textStyle ?? TextStyle(color:CustomColors.textColor1,),
      ),
      title: title,
      desc: message,
      closeIcon: Icon(Icons.close,color: iconColor ?? CustomColors.black,),
      buttons: [
        DialogButton(
          child: CustomTitle(
            title: "No",
            fontColor: CustomColors.white,
            fontWeight: FontWeight.w600,
            fontSize: 13.sp,
          ),
          onPressed: () => Get.back(),
          color: buttonColor ?? CustomColors.grey,
        ),
        DialogButton(
          child: CustomTitle(
            title: "Yes",
            fontColor: CustomColors.white,
            fontWeight: FontWeight.w600,
            fontSize: 13.sp,
          ),
          onPressed: () {
            Get.back();
            onYes.call();
          },
          color: CustomColors.primary,
        ),
      ],
    ).show();
  }

}