import 'package:flutter/material.dart';
import 'package:travel_course/core/styles/app_font.dart';
import 'package:travel_course/core/styles/app_size.dart';

import 'app_colors.dart';

class AppTextStyles{
  static TextStyle textStyleSplash=TextStyle(
    color: AppColors.colorText,
    fontSize: AppSize.titleSplash,
    fontWeight: AppFont.fontTextSplash,
  );

  static TextStyle textStyleOnboarding=TextStyle(
    color: AppColors.colorText,
    fontSize: AppSize.titleSplash,
    fontWeight: AppFont.fontTextSplash,
  );

  static TextStyle descriptionStyleOnboarding=TextStyle(
    color: AppColors.colorDescriptionOnboarding,
    fontSize: AppSize.descriptionOnboarding,
    fontWeight: AppFont.fontDescriptionOnboarding,
  );


  static TextStyle customButton=TextStyle(
    color: AppColors.colorText,
    fontSize: AppSize.textButton,
  );

  static TextStyle signTitle=TextStyle(
    color: AppColors.colorSignTitle,
    fontSize: AppSize.titleOnboarding,
    fontWeight: AppFont.fontTextSplash,

  );

  static TextStyle signDes=TextStyle(
    color: AppColors.colorSignDes,
    fontSize: AppSize.descriptionSign,
    fontWeight: AppFont.fontDescriptionOnboarding,
  );
  static const TextStyle textfrom=TextStyle(
    color: AppColors.colorTextForm,
  );

  static TextStyle email=TextStyle(
    color: AppColors.colorSignTitle,
    fontSize: AppSize.descriptionOnboarding,
    fontWeight: AppFont.fontTextSplash,
  );

  static TextStyle password=TextStyle(
    color: AppColors.colorSignTitle,
    fontSize: AppSize.descriptionOnboarding,
    fontWeight: AppFont.fontTextSplash,
  );

  static const TextStyle forgetPassword=TextStyle(
    color: AppColors.colorButtonAndBackg,
  );

  static TextStyle rewardtext=TextStyle(
    fontSize: AppSize.descriptionSign,
    color: AppColors.colorSignTitle,
  );

  static TextStyle rewardnumber=TextStyle(
    fontSize: AppSize.textButton,
    color: AppColors.colorButtonAndBackg,
  );

}