class ModuleModel {
  final String title;
  final String author;
  final String description;
  final String content;
  final String imagePath;
  final DateTime date; // Add the date property

  ModuleModel({
    required this.title,
    required this.author,
    required this.description,
    required this.content,
    required this.imagePath,
    required this.date, // Add date as a required parameter
  });
}
