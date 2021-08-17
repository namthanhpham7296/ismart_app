import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ismart_app/routes/pages.dart';
import 'package:keyboard_dismisser/keyboard_dismisser.dart';

class LoginPage extends StatelessWidget {
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
                      "LOGIN",
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
                        height: size.height * 0.7,
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.center,
                        child: Form(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: "ID / Email / Phone number",
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
                              SizedBox(height: size.height * 0.03),
                              Container(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: TextFormField(
                                  obscureText: true,
                                  decoration: InputDecoration(
                                    hintText: "Password",
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
                              Padding(
                                padding: EdgeInsets.only(left: 20, right: 20),
                                child: SizedBox(
                                  height: 40,
                                  width: double.infinity,
                                  child: RaisedButton(
                                    onPressed: () {},
                                    child: Text(
                                      "Login",
                                      style: TextStyle(
                                          fontSize: 16,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(20),
                                      side: BorderSide(
                                          color: Colors.black, width: 1),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(height: size.height * 0.06),
                              GestureDetector(
                                onTap: () {
                                  Get.toNamed(Routes.FORGETPASSWORD);
                                },
                                child: Text("Forget your password?",
                                    style: TextStyle(
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold)),
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
