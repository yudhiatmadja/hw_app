import 'package:flutter/material.dart';

class AbsenAdminPage extends StatefulWidget {
  @override
  _AbsenAdminPageState createState() => _AbsenAdminPageState();
}

class _AbsenAdminPageState extends State<AbsenAdminPage> {
  List<Attendance> attendances = [
    Attendance('John Doe', true),
    Attendance('Jane Smith', false),
    Attendance('Michael Johnson', true),
    Attendance('Emily Davis', false),
    Attendance('Chris Brown', true),
    Attendance('Patricia Green', true),
    Attendance('David Wilson', false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Presensi '),
        backgroundColor: Colors.green,
      ),
      body: ListView.builder(
        itemCount: attendances.length,
        itemBuilder: (context, index) {
          return attendanceRow(attendances[index], index);
        },
      ),
    );
  }

  Widget attendanceRow(Attendance attendance, int index) {
    return Card(
      margin: EdgeInsets.all(10),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage(
              'assets/profile.jpg'), // Replace with member profile image
        ),
        title: Text(attendance.name),
        subtitle: Text(attendance.isPresent ? 'Hadir' : 'Absen'),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            IconButton(
              icon: Icon(Icons.edit),
              onPressed: () {
                print("Edit button pressed for index $index");
                editAttendance(index);
              },
            ),
            IconButton(
              icon: Icon(Icons.delete),
              onPressed: () {
                print("Delete button pressed for index $index");
                deleteAttendance(index);
              },
            ),
          ],
        ),
      ),
    );
  }

  void editAttendance(int index) {
    TextEditingController nameController =
        TextEditingController(text: attendances[index].name);
    bool isPresent = attendances[index].isPresent;

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text('Edit Attendance'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                controller: nameController,
                decoration: InputDecoration(labelText: 'Name'),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Hadir'),
                  Switch(
                    value: isPresent,
                    onChanged: (value) {
                      setState(() {
                        isPresent = value;
                      });
                    },
                  ),
                ],
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                setState(() {
                  attendances[index].name = nameController.text;
                  attendances[index].isPresent = isPresent;
                });
                Navigator.of(context).pop();
              },
              child: Text('Save'),
            ),
            TextButton(
              onPressed: () => Navigator.of(context).pop(),
              child: Text('Cancel'),
            ),
          ],
        );
      },
    );
  }

  void deleteAttendance(int index) {
    setState(() {
      attendances.removeAt(index);
    });
  }
}

class Attendance {
  String name;
  bool isPresent;

  Attendance(this.name, this.isPresent);
}
