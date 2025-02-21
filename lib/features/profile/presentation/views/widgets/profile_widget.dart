import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:travel_course/core/constants/app_icons.dart';
import 'package:travel_course/core/router/app_router.dart';
import 'package:travel_course/core/styles/app_text_styles.dart';
import 'package:travel_course/features/profile/presentation/views/widgets/image_profile.dart';
import 'package:travel_course/features/profile/presentation/views/widgets/more_issues.dart';

import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_size_box.dart';
import 'container_points.dart';


class ProfileWidget extends StatelessWidget {
  const ProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorText,
       appBar: AppBar(
         backgroundColor: AppColors.colorText,
         title: const Text("Profile",style: TextStyle(),),
         centerTitle: true,
         leading: AppIcons.backButton(context),
         actions: [
         IconButton(onPressed: (){
           GoRouter.of(context).push(Routers.editProfile.name);
         }, icon:  Icon(Icons.edit_rounded,size: 20,color: AppColors.colorButtonAndBackg,),),

         ],
       ),
      body:  SingleChildScrollView(
        child:
            Column(
              children: [
                AppSizeBox.size20,
                Center(child: ImageProfile()),
                Center(child: Text("your name",style: AppTextStyles.signTitle,)),
                Center(child: Text("your details",style: AppTextStyles.signDes,)),
                AppSizeBox.size35,
                ContainerPoints(),
                AppSizeBox.size20,
                MoreIssues(),

              ],
            )



      ),
    );
  }
}
