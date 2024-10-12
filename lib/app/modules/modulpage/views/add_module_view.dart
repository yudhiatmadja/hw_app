import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwapp/app/modules/modulpage/controllers/module_controller.dart';
import 'package:hwapp/app/modules/modulpage/widgets/modul_card.dart';

class ModuleAdd extends StatelessWidget {
  final ModuleController controller = Get.put(ModuleController());
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController titleController = TextEditingController();
  final TextEditingController authorController = TextEditingController();
  final TextEditingController descriptionController = TextEditingController();
  final TextEditingController contentController = TextEditingController();
  final Rx<DateTime?> selectedDate = Rx<DateTime?>(null); // For date

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F5F5),
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 0,
        title: Text(
          'Modul',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Obx(
          () => ListView.builder(
            itemCount: controller.modules.length,
            itemBuilder: (context, index) {
              return ModuleCard(
                  module: controller.modules[index],
                  index: index); // Pass index here
            },
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        splashColor: Colors.deepPurple,
        onPressed: () => _showAddModuleDialog(context),
        backgroundColor: Colors.green,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        currentIndex: 0,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Beranda',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.apps),
            label: 'Modul',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.access_time),
            label: 'Riwayat',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            label: 'Diskusi',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }

  void _showAddModuleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Tambah Modul'),
          content: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    TextFormField(
                      controller: titleController,
                      decoration: InputDecoration(
                        labelText: 'Judul Modul',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Judul Modul tidak boleh kosong';
                        }
                        return null; // Return null if the field is valid
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: authorController,
                      decoration: InputDecoration(
                        labelText: 'Penulis Modul',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Penulis tidak boleh kosong';
                        }
                        return null; // Return null if the field is valid
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: descriptionController,
                      decoration: InputDecoration(
                        labelText: 'Deskripsi Modul',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Deskripsi tidak boleh kosong';
                        }
                        return null; // Return null if the field is valid
                      },
                    ),
                    SizedBox(height: 10),
                    TextFormField(
                      controller: contentController,
                      decoration: InputDecoration(
                        labelText: 'Isi Modul',
                        border: OutlineInputBorder(),
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Isi Modul tidak boleh kosong';
                        }
                        return null; // Return null if the field is valid
                      },
                    ),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Obx(
                          () => controller.selectedImage.value.isNotEmpty
                              ? Expanded(
                                  child: Image.file(
                                    File(controller.selectedImage.value),
                                    width: 100,
                                    height: 100,
                                    fit: BoxFit.cover,
                                  ),
                                )
                              : Container(),
                        ),
                        SizedBox(width: 8), // Space between image and button
                        ElevatedButton.icon(
                          onPressed: controller.pickImage,
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                          ),
                          icon: Icon(Icons.camera_alt, color: Colors.white),
                          label: Text(
                            'Pilih Gambar',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Obx(
                      () => TextButton.icon(
                        onPressed: () async {
                          DateTime? pickedDate = await showDatePicker(
                            context: context,
                            initialDate: DateTime.now(),
                            firstDate: DateTime(2000),
                            lastDate: DateTime(2100),
                          );
                          if (pickedDate != null) {
                            selectedDate.value = pickedDate;
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
                if (_formKey.currentState!.validate() &&
                    selectedDate.value != null) {
                  controller.addModule(
                    titleController.text,
                    authorController.text,
                    descriptionController.text,
                    contentController.text,
                    selectedDate.value!,
                  );
                  titleController.clear();
                  authorController.clear();
                  descriptionController.clear();
                  contentController.clear();
                  selectedDate.value = null;
                  Get.back();
                } else {
                  Get.snackbar('Error',
                      'Silakan lengkapi semua field dan pilih tanggal.');
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
              child: Text(
                'Batal',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        );
      },
    );
  }
}
