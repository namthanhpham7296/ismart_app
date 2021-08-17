import 'package:get/get.dart';
import 'package:ismart_app/routes/pages.dart';

class AuthController extends GetxController {
  var isSendForgetPassword = true.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 5), () async {
      sendForgetPassword();
    });
  }

  sendForgetPassword() async {
    isSendForgetPassword.value = true;
    Get.offAllNamed(Routes.WELCOME);
  }
}
