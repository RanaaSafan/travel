import 'dart:io';

import 'package:flutter/material.dart';
import 'package:travel_course/features/profile/presentation/views/widgets/profile_image_picker.dart';

import '../../../../../core/constants/app_icons.dart';
import '../../../../../core/styles/app_colors.dart';

class EditProfileWidget extends StatefulWidget {
  const EditProfileWidget({super.key});

  @override
  State<EditProfileWidget> createState() => _EditProfileWidgetState();
}

class _EditProfileWidgetState extends State<EditProfileWidget> {
  File? selectedImage;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.colorText,
      appBar: AppBar(
        backgroundColor: AppColors.colorText,
        title: const Text("Edit Profile",style: TextStyle(),),
        centerTitle: true,
        leading: AppIcons.backButton(context),

      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: ProfileImagePicker(
                defaultImage: "assets/images/travel3.png",
                onImageSelected: (image) {
                  setState(() {
                    selectedImage = image;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
