import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:hwapp/app/modules/login/bindings/login_bindings.dart';

import 'app/routes/app_pages.dart';
import 'package:get_storage/get_storage.dart';

void main() async {
  await GetStorage.init();
  runApp(
    GetMaterialApp(
      title: "Hizbul Wathan App",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      initialBinding: LoginBinding(),
    ),
  );
}
