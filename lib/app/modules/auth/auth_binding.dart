import 'package:get/get.dart';
import 'package:ismart_app/app/modules/auth/auth_controller.dart';

class AuthBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AuthController>(() => AuthController());
  }
  //
}
