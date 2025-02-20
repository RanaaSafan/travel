import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'core/router/router_config.dart';


void main()  {
  //WidgetsFlutterBinding.ensureInitialized(); // تأكد من تهيئة الويدجت قبل تشغيل Firebase
  //await Firebase.initializeApp(); // تهيئة Firebase
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
    );

  }
}

