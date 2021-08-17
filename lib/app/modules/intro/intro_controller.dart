import 'package:get/get.dart';
import 'package:ismart_app/routes/pages.dart';

class IntroController extends GetxController {
  var isLoading = true.obs;
  @override
  void onInit() {
    super.onInit();
    Future.delayed(Duration(seconds: 5), () async {
      intilizeFirebase();
    });
  }

  intilizeFirebase() async {
    final user = "";
    if (user == "") {
      Get.offNamed(Routes.WELCOME);
    }
  }
}
