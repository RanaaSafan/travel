import 'package:flutter/material.dart';
import 'package:travel_course/core/styles/app_size_box.dart';
import 'package:travel_course/core/widgets/text_field_custom.dart';
import 'package:travel_course/features/profile/presentation/views/widgets/phone_text.dart';

import '../../../../../core/constants/app_padding.dart';
import '../../../../../core/styles/app_text_styles.dart';

class UserDetails extends StatefulWidget {
  const UserDetails({super.key});

  @override
  State<UserDetails> createState() => _UserDetailsState();
}

class _UserDetailsState extends State<UserDetails> {
  final TextEditingController fNameController=TextEditingController();
  final TextEditingController lNameController=TextEditingController();
  final TextEditingController locationController=TextEditingController();
  final TextEditingController numberController=TextEditingController();
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Padding(
        padding: AppPadding.spaceButton,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [

            Text(
              "First Name",
              style: AppTextStyles.email,
            ),
            AppSizeBox.size5,
            TextFieldCustom(
              controller:fNameController ,
            ),

            AppSizeBox.size25,
            Text(
              "Last Name",
              style: AppTextStyles.email,
            ),
            AppSizeBox.size5,
            TextFieldCustom(
              controller:lNameController ,
            ),

            AppSizeBox.size25,
            Text(
              "Location",
              style: AppTextStyles.email,
            ),

            AppSizeBox.size5,
            TextFieldCustom(
              controller:locationController ,
            ),

            AppSizeBox.size25,
            Text(
              "Phone Number",
              style: AppTextStyles.email,
            ),
            AppSizeBox.size5,
           const Padding(
             padding: EdgeInsets.all(8.0),
             child: PhoneText(),
           ),
          ],
        ),
      ),
    );
  }
}
