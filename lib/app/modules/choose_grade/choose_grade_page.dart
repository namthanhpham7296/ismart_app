import 'package:flutter/material.dart';
import 'package:ismart_app/app/modules/choose_grade/widgets/elevated_button_confirm.dart';
import 'package:ismart_app/app/modules/choose_grade/widgets/grade_button.dart';

class ChooseGradePage extends StatelessWidget {
  int? selectedIndex;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  "Great! Let's choose a grade",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                Text(
                  "We will set up a new account depending on your grade",
                  style: TextStyle(fontSize: 15),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                SizedBox(
                  height: 60.0,
                  width: double.infinity,
                  child: Container(
                      alignment: Alignment.center, child: MyListItem()),
                ),
                SizedBox(
                  height: size.height * 0.05,
                ),
                ElevatedButtonConfirm()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

