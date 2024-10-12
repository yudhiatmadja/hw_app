import 'package:get/get.dart';
import 'package:hwapp/app/modules/user_modul/controllers/modul_controller.dart';

class ModulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<ModulController>(
      () => ModulController(),
    );
  }
}
