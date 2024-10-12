import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwapp/app/data/models/usermodulmodel.dart';
import '../controllers/modul_controller.dart';
import 'baca_modul.dart';

class ModulScreen extends StatelessWidget {
  final ModulController _modulController =
      Get.put(ModulController()); // Instantiate controller

  Widget moduleCard(ModulModel module) {
    return GestureDetector(
      onTap: () {
        // Set the module details in the controller
        _modulController.setModule(module);
        // Navigate to the BacaModulScreen
        Get.to(BacaModulScreen());
      },
      child: Container(
        width: 383,
        height: 172,
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 383,
                height: 172,
                decoration: BoxDecoration(color: Color(0xFFF1F1F1)),
              ),
            ),
            Positioned(
              left: 99,
              top: 17,
              child: SizedBox(
                width: 172,
                height: 19,
                child: Text(
                  module.title,
                  style: TextStyle(
                    color: Color(0xFF292929),
                    fontSize: 20.17,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: 42,
              child: SizedBox(
                width: 83,
                height: 13,
                child: Text(
                  module.date,
                  style: TextStyle(
                    color: Color(0xFF696969),
                    fontSize: 13.45,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 100,
              top: 67,
              child: SizedBox(
                width: 258,
                height: 39,
                child: Text(
                  module.description,
                  style: TextStyle(
                    color: Color(0xFF292929),
                    fontSize: 13.45,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            Positioned(
              left: 277,
              top: 129,
              child: GestureDetector(
                onTap: () {
                  // Set the module details in the controller
                  _modulController.setModule(module);
                  // Navigate to the BacaModulScreen
                  Get.to(BacaModulScreen());
                },
                child: Container(
                  width: 87,
                  height: 31,
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.48),
                    ),
                  ),
                  child: Center(
                    child: Text(
                      'Baca',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 13.45,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Example module list for demonstration purposes
    final List<ModulModel> modules = [
      ModulModel(
        title: "Modul 1",
        date: "01 Jan 2024",
        description: "Description for Modul 1",
      ),
      ModulModel(
        title: "Modul 2",
        date: "02 Jan 2024",
        description: "Description for Modul 2",
      ),
      // Add more modules as needed
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Modul List'),
      ),
      body: ListView(
        children: modules.map(moduleCard).toList(),
      ),
    );
  }
}
