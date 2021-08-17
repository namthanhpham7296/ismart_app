import 'package:get/get.dart';
import 'package:ismart_app/app/modules/auth/auth_binding.dart';
import 'package:ismart_app/app/modules/auth/login_page.dart';
import 'package:ismart_app/app/modules/auth/forget_password_page.dart';
import 'package:ismart_app/app/modules/auth/send_forget_password_page.dart';
import 'package:ismart_app/app/modules/choose_grade/choose_grade_page.dart';
import 'package:ismart_app/app/modules/home/home_page.dart';
import 'package:ismart_app/app/modules/intro/intro_bliding.dart';
import 'package:ismart_app/app/modules/intro/intro_page.dart';
import 'package:ismart_app/app/modules/auth/welcome_page.dart';

part './routes.dart';

abstract class AppPages {
  static final pages = [
    GetPage(
      name: Routes.INITIAL,
      page: () => IntroPage(),
      binding: IntroBinding(),
    ),
    GetPage(
      name: Routes.WELCOME,
      page: () => WelcomePage(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.AUTH,
      page: () => LoginPage(),
      binding: AuthBinding(),
    ),
    GetPage(
      name: Routes.FORGETPASSWORD,
      page: () => ForgetPasswordPage(),
    ),
    GetPage(
      name: Routes.SEND_FORGETPASSWORD,
      page: () => SendForgetPasswordPage(),
    ),
     GetPage(
      name: Routes.CHOOSE_GRADE,
      page: () => ChooseGradePage(),
    )
  ];
}
