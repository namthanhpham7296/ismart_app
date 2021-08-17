import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismart_app/app/modules/intro/intro_controller.dart';

class IntroPage extends StatelessWidget {
  final IntroController introController = Get.find<IntroController>();
  @override
  Widget build(BuildContext context) {
    final Orientation orientation = MediaQuery.of(context).orientation;
    final bool isLandscape = orientation == Orientation.landscape;
    return Scaffold(
      primary: !isLandscape,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                decoration: BoxDecoration(border: Border.all()),
                padding: EdgeInsets.all(20),
                child: Text(
                  "iSmart Tutoring Online",
                  style: TextStyle(fontSize: 20),
                ),
              ),
              Obx(() => SizedBox(
                  width: 40,
                  height: 40,
                  child: (introController.isLoading.value)
                      ? CircularProgressIndicator()
                      : CircularProgressIndicator(
                          value: 100,
                        ))),
            ],
          ),
        ),
      ),
    );
  }
}
