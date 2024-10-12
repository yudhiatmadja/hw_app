import 'package:get/get.dart';
import 'package:hwapp/app/modules/login/controllers/login_controller.dart';
import 'package:hwapp/app/routes/app_pages.dart';

class SplashController extends GetxController {
  //TODO: Implement SplashController
  final loginController = Get.put(LoginController());

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    if (loginController.getStorage.read("status") != "" &&
        loginController.getStorage.read("status") != null) {
      Future.delayed(const Duration(seconds: 30), () {
        Get.offAllNamed(Routes.HOMEPAGE_A);
      });
    } else {
      Get.offAllNamed(Routes.LOGIN);
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
