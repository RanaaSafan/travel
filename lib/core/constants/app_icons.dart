
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppIcons {
  static Widget backButton(BuildContext context) {
    return IconButton(
      onPressed: () => GoRouter.of(context).pop(),
      icon: const Icon(Icons.arrow_back_ios_rounded),
    );
  }

}
