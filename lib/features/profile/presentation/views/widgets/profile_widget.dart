import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:travel_course/core/constants/app_icons.dart';
import 'package:travel_course/core/router/app_router.dart';
import 'package:travel_course/core/styles/app_text_styles.dart';
import 'package:travel_course/features/profile/presentation/views/widgets/image_profile.dart';
import 'package:travel_course/features/profile/presentation/views/widgets/more_issues.dart';

import '../../../../../core/styles/app_colors.dart';
import '../../../../../core/styles/app_size_box.dart';
import 'container_points.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({super.key});

  @override
  State<ProfileWidget> createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
  String? userName;

  @override
  void initState() {
    super.initState();
    loadUserData();
  }


  Future<void> loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String? name = prefs.getString('user_name');
    setState(() {
      userName = name ?? "User";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorText,
      appBar: AppBar(
        backgroundColor: AppColors.colorText,
        title: const Text("Profile", style: TextStyle()),
        centerTitle: true,
        leading: AppIcons.backButton(context),
        actions: [
          IconButton(
            onPressed: () {
              GoRouter.of(context).push(Routers.editProfile.name);
            },
            icon: Icon(
              Icons.edit_rounded,
              size: 20.sp,
              color: AppColors.colorButtonAndBackg,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            AppSizeBox.size20,
            const Center(child: ImageProfile()),

            userName == null
                ? const CircularProgressIndicator()
                : Center(child: Text(userName ?? "your name", style: AppTextStyles.signTitle)),
            Center(child: Text("your details", style: AppTextStyles.signDes)),
            AppSizeBox.size35,
            const ContainerPoints(),
            AppSizeBox.size20,
            const MoreIssues(),
          ],
        ),
      ),
    );
  }
}
