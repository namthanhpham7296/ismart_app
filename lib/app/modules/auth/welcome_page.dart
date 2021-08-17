import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ismart_app/routes/pages.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: size.height,
          width: double.infinity,
          child: Stack(alignment: Alignment.center, children: <Widget>[
            SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Welcome",
                    style: TextStyle(fontSize: 60, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Have you studied with us before?",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                    padding: EdgeInsets.all(3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          child: Material(
                              color: Colors.transparent,
                              child: Text(
                                "Yes, I have",
                                style: GoogleFonts.suezOne(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              )),
                          onPressed: () => Get.toNamed(Routes.AUTH),
                          style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(size.width * 0.15, size.height * 0.10),
                            primary: Colors.black12,
                            onPrimary: Colors.black,
                            side: BorderSide(width: 2.0, color: Colors.black),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        ),
                        SizedBox(
                          width: size.width * 0.1,
                        ),
                        OutlinedButton(
                          child: Material(
                              color: Colors.transparent,
                              child: Text(
                                "No, I'm new",
                                style: GoogleFonts.suezOne(
                                  fontSize: 16,
                                  fontWeight: FontWeight.normal,
                                ),
                              )),
                          onPressed: () => Get.toNamed(Routes.CHOOSE_GRADE),
                          style: ElevatedButton.styleFrom(
                            minimumSize:
                                Size(size.width * 0.15, size.height * 0.10),
                            side: BorderSide(width: 2.0, color: Colors.black),
                            onPrimary: Colors.black,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
