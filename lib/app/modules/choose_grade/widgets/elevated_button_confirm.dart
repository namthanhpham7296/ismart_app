import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ElevatedButtonConfirm extends StatefulWidget {
  @override
  _ElevatedButtonConfirmState createState() => _ElevatedButtonConfirmState();
}

class _ElevatedButtonConfirmState extends State<ElevatedButtonConfirm> {
  bool isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(
        onPressed: () {
          isButtonPressed = !isButtonPressed;
          //Get.toNamed(Routes.SETUP_ACCOUNT_USER);
        },
        child: Text(
          "Confirm",
          style: GoogleFonts.suezOne(
            fontSize: 16,
            fontWeight: FontWeight.normal,
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(size.width * 0.20, size.height * 0.10),
          primary: isButtonPressed ? Colors.white : Colors.black12,
          onPrimary: Colors.black,
          side: BorderSide(width: 1.0, color: Colors.black),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(32.0),
          ),
        ),
      ),
    );
  }
}
