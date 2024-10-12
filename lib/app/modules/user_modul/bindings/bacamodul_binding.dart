import 'package:get/get.dart';
import 'package:hwapp/app/modules/user_modul/controllers/bacamodul_controller.dart';

class BacaModulBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<BacamodulController>(
      () => BacamodulController(),
    );
  }
}
