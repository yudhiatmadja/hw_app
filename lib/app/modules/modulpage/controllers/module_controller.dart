import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:hwapp/app/data/models/module_model.dart';

class ModuleController extends GetxController {
  var name = ''.obs;
  var selectedImage = ''.obs;
  var modules = <ModuleModel>[].obs;

  void updateName(String newName) {
    name.value = newName;
  }

  Future<void> pickImage() async {
    final ImagePicker _picker = ImagePicker();
    final XFile? image = await _picker.pickImage(source: ImageSource.gallery);

    if (image != null) {
      selectedImage.value = image.path;
    }
  }

  void addModule(String title, String author, String description,
      String content, DateTime dateTime) {
    var module = ModuleModel(
      title: title,
      author: author,
      description: description,
      content: content,
      imagePath: selectedImage.value,
      date: dateTime,
    );
    modules.add(module);
    selectedImage.value = '';
  }

  void deleteModule(int index) {
    modules.removeAt(index);
  }

  void editModule(int index, ModuleModel updatedModule) {
    modules[index] = updatedModule;
  }
}
