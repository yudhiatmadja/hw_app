import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwapp/app/data/models/module_model.dart';
import '../controllers/module_controller.dart';

class ModuleCard extends StatelessWidget {
  final ModuleModel module;
  final int index; // Add index parameter
  final ModuleController controller =
      Get.find<ModuleController>(); // Get the instance of the controller

  ModuleCard(
      {required this.module, required this.index}); // Add index to constructor

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 383.0,
      height: 172.0,
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  module.imagePath.isNotEmpty
                      ? Container(
                          width: 100,
                          height: 100,
                          child: Image.file(
                            File(module.imagePath),
                            fit: BoxFit.cover,
                          ),
                        )
                      : Container(
                          width: 100,
                          height: 100,
                          color: Colors.grey,
                        ),
                  SizedBox(width: 8),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          module.title,
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 4),
                        Text(
                          '${module.date.day}-${module.date.month}-${module.date.year}',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey[600],
                          ),
                        ),
                        Text('Deskripsi: ${module.description}'),
                        SizedBox(height: 4),
                      ],
                    ),
                  ),
                ],
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    icon: Icon(Icons.edit, color: Colors.blue),
                    onPressed: () {
                      _showEditModuleDialog(context, module);
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.delete, color: Colors.red),
                    onPressed: () {
                      controller.deleteModule(index);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  // Function to show the edit dialog
  void _showEditModuleDialog(BuildContext context, ModuleModel module) {
    final TextEditingController titleController =
        TextEditingController(text: module.title);
    final TextEditingController authorController =
        TextEditingController(text: module.author);
    final TextEditingController descriptionController =
        TextEditingController(text: module.description);
    final TextEditingController contentController =
        TextEditingController(text: module.content);
    final Rx<DateTime?> selectedDate =
        Rx<DateTime?>(module.date); // Pre-fill with the current date

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Modul'),
          content: SingleChildScrollView(
            child: Form(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextField(
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: 'Judul Modul',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: authorController,
                      decoration: InputDecoration(
                        labelText: 'Penulis Modul',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        labelText: 'Deskripsi Modul',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: contentController,
                      decoration: InputDecoration(
                        labelText: 'Isi Modul',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => TextButton.icon(
                        onPressed: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: selectedDate.value ?? DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          );
                          if (pickedDate != null) {
                            selectedDate.value =
                                pickedDate; // Update the selected date
                          }
                        },
                        icon: Icon(Icons.calendar_today),
                        label: Text(
                          selectedDate.value != null
                              ? '${selectedDate.value!.day}-${selectedDate.value!.month}-${selectedDate.value!.year}'
                              : 'Pilih Tanggal',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                // Call edit method with updated data
                if (selectedDate.value != null) {
                  var updatedModule = ModuleModel(
                    title: titleController.text,
                    author: authorController.text,
                    description: descriptionController.text,
                    content: contentController.text,
                    imagePath: module.imagePath, // Keep the same image path
                    date: selectedDate.value!,
                  );
                  controller.editModule(index, updatedModule);
                  Get.back();
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'Simpan',
                style: TextStyle(color: Colors.white),
              ),
            ),
            TextButton(
              onPressed: () {
                Get.back();
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              child: Text(
                'Batal',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        );
      },
    );
  }
}
