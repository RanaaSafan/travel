import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:travel_course/features/profile/presentation/views/widgets/issue.dart';

class MoreIssues extends StatelessWidget {
  const MoreIssues({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
       Issue(title: "profile", icon1: const Icon(Icons.account_circle), icon2: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_rounded))),
       Divider(
         thickness: 0.5,
         height: 30.h,
       ),
        Issue(title: "Bookmarked", icon1: const Icon(Icons.bookmark_border), icon2: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_rounded))),
        Divider(
          thickness: 0.5,
          height: 30.h,
        ),
        Issue(title: "Previous Trips", icon1: const Icon(Icons.travel_explore_rounded), icon2: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_rounded))),
        Divider(
          thickness: 0.5,
          height: 30.h,
        ),
        Issue(title: "Settings", icon1: const Icon(Icons.settings), icon2: IconButton(onPressed: (){}, icon: const Icon(Icons.arrow_forward_rounded))),
        Divider(
          thickness: 0.5,
          height: 30.h,
        ),
      ],
    );
  }
}
