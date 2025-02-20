import 'package:flutter/material.dart';
import 'package:travel_course/features/profile/presentation/views/widgets/issue.dart';

class MoreIssues extends StatelessWidget {
  const MoreIssues({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Column(
        children: [
         Issue(title: "profile", icon1: Icon(Icons.account_circle), icon2: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded))),
         Divider(
           thickness: 0.5,
           height: 30,
         ),
          Issue(title: "Bookmarked", icon1: Icon(Icons.bookmark_border), icon2: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded))),
          Divider(
            thickness: 0.5,
            height: 30,
          ),
          Issue(title: "Previous Trips", icon1: Icon(Icons.travel_explore_rounded), icon2: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded))),
          Divider(
            thickness: 0.5,
            height: 30,
          ),
          Issue(title: "Settings", icon1: Icon(Icons.settings), icon2: IconButton(onPressed: (){}, icon: Icon(Icons.arrow_forward_rounded))),
          Divider(
            thickness: 0.5,
            height: 30,
          ),
        ],
      ),
    );
  }
}
