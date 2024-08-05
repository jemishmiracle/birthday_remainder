import 'dart:io';
import 'package:birthday_remainder/Utils/Extentions.dart';
import 'package:birthday_remainder/customElement/custom_elements.dart';
import 'package:birthday_remainder/widget/shimmer.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget CustomImage(String url,{double? width,double? height,BoxFit? fit,Color? color}){
  return url.isSvg ? SvgPicture.asset(url,
    width: width,
    height: height,
    fit: fit ?? BoxFit.cover,
    color: color ?? CustomColors.transparent,
  ) : url.isAsset ? Image.asset(url,
    width: width,
    height: height,
    fit: fit ?? BoxFit.cover,
    color: color ?? CustomColors.transparent,
  ) : CachedNetworkImage(
    fit: fit ?? BoxFit.cover,
    width: width ?? double.infinity,
    height: height,
    imageUrl: url,
    placeholder: (context, url) => ShimerLoader( width: width, height: height,),
  );
}

Widget CustomFileImage(String url,{double? width,double? height,BoxFit? fit, }){
  return  Image.file(File(url),
    width: width,
    height: height,
    fit: fit ?? BoxFit.cover,
  );
}