import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:hwapp/app/routes/app_pages.dart';

class LoginController extends GetxController {
  final getStorage = GetStorage();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  void kliklogin(String username) {
    getStorage.write("status", "login");

    if (username == "admin") {
      Get.offAllNamed(Routes.HOMEPAGE_A);
    } else if (username == "user") {
      Get.offAllNamed(Routes.HOMEPAGE_U);
    } else {
      Get.snackbar(
        "Login Failed",
        "Invalid username",
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }

  @override
  void onClose() {
    super.onClose();
  }
}
