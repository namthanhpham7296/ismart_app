import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismart_app/app/modules/auth/auth_controller.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class SendForgetPasswordPage extends StatelessWidget {
  final AuthController controller = Get.put<AuthController>(AuthController());
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
                                  "H??? th???ng ???? g???i th??ng tin c???p l???i m???t kh???u v??o ?????a ch??? email <?????a ch??? email> c???a b???n. Vui l??ng ki???m tra h??m th?? v?? x??c nh???n trong v??ng 24 gi???.",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Obx(
                    () => SizedBox(
                      width: 40,
                      height: 40,
                      child: (controller.isSendForgetPassword.value)
                          ? CircularProgressIndicator()
                          : CircularProgressIndicator(
                              value: 100,
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
