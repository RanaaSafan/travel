import 'package:flutter/material.dart';
import 'package:travel_course/core/styles/app_font.dart';
import 'package:travel_course/core/styles/app_size.dart';

import 'app_colors.dart';

class AppTextStyles{
  static const TextStyle textStyleSplash=TextStyle(
    color: AppColors.colorText,
    fontSize: AppSize.titleSplash,
    fontWeight: AppFont.fontTextSplash,
  );

  static const TextStyle textStyleOnboarding=TextStyle(
    color: AppColors.colorText,
    fontSize: AppSize.titleSplash,
    fontWeight: AppFont.fontTextSplash,
  );

  static const TextStyle descriptionStyleOnboarding=TextStyle(
    color: AppColors.colorDescriptionOnboarding,
    fontSize: AppSize.descriptionOnboarding,
    fontWeight: AppFont.fontDescriptionOnboarding,
  );


  static const TextStyle customButton=TextStyle(
    color: AppColors.colorText,
    fontSize: AppSize.textButton,
  );

  static const TextStyle signTitle=TextStyle(
    color: AppColors.colorSignTitle,
    fontSize: AppSize.titleOnboarding,
    fontWeight: AppFont.fontTextSplash,

  );

  static const TextStyle signDes=TextStyle(
    color: AppColors.colorSignDes,
    fontSize: AppSize.descriptionSign,
    fontWeight: AppFont.fontDescriptionOnboarding,
  );
  static const TextStyle textfrom=TextStyle(
    color: AppColors.colorTextForm,
  );

  static const TextStyle email=TextStyle(
    color: AppColors.colorSignTitle,
    fontSize: AppSize.descriptionOnboarding,
    fontWeight: AppFont.fontTextSplash,
  );

  static const TextStyle password=TextStyle(
    color: AppColors.colorSignTitle,
    fontSize: AppSize.descriptionOnboarding,
    fontWeight: AppFont.fontTextSplash,
  );

  static const TextStyle forgetPassword=TextStyle(
    color: AppColors.colorButtonAndBackg,
  );

  static const TextStyle rewardtext=TextStyle(
    fontSize: AppSize.descriptionSign,
    color: AppColors.colorSignTitle,
  );

  static const TextStyle rewardnumber=TextStyle(
    fontSize: AppSize.textButton,
    color: AppColors.colorButtonAndBackg,
  );

}