import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/quiz_controller.dart';

class QuizView extends GetView<QuizController> {
  const QuizView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Abraham'),
        backgroundColor: Colors.green,
        actions: [
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () {
              // Action untuk menambah quiz baru
            },
          ),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          buildQuizCard('Quiz 1', 'Date', 'Deskripsi Quiz'),
          buildQuizCard('Quiz 2', 'Date', 'Deskripsi Quiz'),
          buildQuizCard('Quiz 3', 'Date', 'Deskripsi Quiz'),
          buildQuizCard('Quiz 4', 'Date', 'Deskripsi Quiz'),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // Set this to control which tab is selected
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view),
            label: 'Modules',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.schedule),
            label: 'Schedule',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.quiz),
            label: 'Quiz',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }

  Widget buildQuizCard(String title, String date, String description) {
    return Card(
      margin: EdgeInsets.only(bottom: 16.0),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(
                  Icons.image,
                  size: 50.0,
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 4.0),
                    Text(
                      date,
                      style: TextStyle(
                        fontSize: 14.0,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Text(description),
                  ],
                ),
              ],
            ),
            SizedBox(height: 16.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton.icon(
                  onPressed: () {
                    // Action untuk delete
                  },
                  icon: Icon(Icons.delete, color: Colors.red),
                  label: Text('Delete', style: TextStyle(color: Colors.red)),
                ),
                TextButton.icon(
                  onPressed: () {
                    // Action untuk edit
                    showEditDialog(Get.context!, title);
                  },
                  icon: Icon(Icons.edit, color: Colors.grey),
                  label: Text('Edit', style: TextStyle(color: Colors.grey)),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showEditDialog(BuildContext context, String quizTitle) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          contentPadding: EdgeInsets.all(16.0),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          content: Container(
            width: MediaQuery.of(context).size.width * 0.8,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Edit Quiz',
                      style: TextStyle(
                          fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      icon: Icon(Icons.close),
                      onPressed: () {
                        Navigator.of(context).pop();
                      },
                    )
                  ],
                ),
                SizedBox(height: 16.0),
                Text('Soal', style: TextStyle(fontWeight: FontWeight.bold)),
                TextField(
                  maxLines: 3,
                  decoration: InputDecoration(
                    hintText: 'Masukkan soal',
                    border: OutlineInputBorder(),
                  ),
                ),
                SizedBox(height: 16.0),
                Text('Jawaban:', style: TextStyle(fontWeight: FontWeight.bold)),
                ...['A', 'B', 'C', 'D'].map((option) {
                  return Padding(
                    padding: const EdgeInsets.only(top: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: option,
                        border: OutlineInputBorder(),
                      ),
                    ),
                  );
                }).toList(),
                SizedBox(height: 16.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                      ),
                      child: Text('Simpan'),
                    ),
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}

void main() {
  runApp(GetMaterialApp(
    home: QuizView(),
  ));
}
