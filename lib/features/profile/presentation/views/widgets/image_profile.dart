import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ImageProfile extends StatelessWidget {
  const ImageProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return  CircleAvatar(
      radius: 50.r,
      backgroundImage: const AssetImage('assets/images/travel3.png'),
    );
  }
}
