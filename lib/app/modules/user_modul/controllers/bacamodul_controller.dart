import 'package:get/get.dart';
import 'package:hwapp/app/data/models/usermodulmodel.dart';

class BacamodulController extends GetxController {
  var module = ModulModel(title: '', date: '', description: '').obs;

  void setModule(ModulModel newModule) {
    module.value = newModule;
  }
}
