import 'package:get/get.dart';
import 'package:hwapp/app/data/models/event_model.dart';

class ScheduleController extends GetxController {
  var events = <Event>[].obs;
  //TODO: Implement HomepageUController

  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void addEvent(Event event) {
    events.add(event);
  }

  void increment() => count.value++;
}
