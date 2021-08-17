import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ismart_app/routes/pages.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class ForgetPasswordPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return KeyboardDismisser(
      child: Scaffold(
        body: SafeArea(
          child: Container(
            alignment: Alignment.center,
            padding: EdgeInsets.only(left: 20, right: 20),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Forgot password",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: size.height * 0.06),
                  Container(
                    child: Card(
                      shape: RoundedRectangleBorder(
                        side: BorderSide(color: Colors.black, width: 1),
                      ),
                      child: Container(
                        width: size.width * 0.6,
                        height: 260,
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.center,
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(
                                  left: 20,
                                  right: 20,
                                  bottom: 20,
                                ),
                                child: Text(
                                  "Nhập ID của bạn để được cấp lại mật khẩu. Vui lòng liên hệ với Quản trị viên nếu bạn quên ID của mình!",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "Nhập ID của bạn",
                                    contentPadding:
                                        EdgeInsets.fromLTRB(10, 10, 10, 0),
                                    enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                    ),
                                    focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(15),
                                      borderSide: BorderSide(
                                        color: Colors.black,
                                        width: 1,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * 0.06),
                              Container(
                                padding: EdgeInsets.only(left: 45, right: 45),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Get.toNamed(Routes.WELCOME);
                                      },
                                      child: Material(
                                        color: Colors.transparent,
                                        child: Text(
                                          "Cancel",
                                          style: GoogleFonts.suezOne(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(size.width * 0.20,
                                            size.height * 0.10),
                                        primary: Colors.black12,
                                        onPrimary: Colors.black,
                                        side: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0),
                                        ),
                                      ),
                                    ),
                                    OutlinedButton(
                                      onPressed: () {
                                        Get.toNamed(Routes.SEND_FORGETPASSWORD);
                                      },
                                      child: Material(
                                        child: Text(
                                          "Confirm",
                                          style: GoogleFonts.suezOne(
                                            fontSize: 16,
                                            fontWeight: FontWeight.normal,
                                          ),
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        minimumSize: Size(size.width * 0.20,
                                            size.height * 0.10),
                                        side: BorderSide(
                                            width: 1.0, color: Colors.black),
                                        onPrimary: Colors.black,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(32.0),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
