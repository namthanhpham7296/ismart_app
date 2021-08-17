import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismart_app/app/modules/intro/intro_bliding.dart';
import 'package:ismart_app/routes/pages.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'ISmart',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      getPages: AppPages.pages,
      initialRoute: Routes.INITIAL,
      initialBinding: IntroBinding(),
    );
  }
}
