import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hwapp/app/modules/Absen/controllers/absen_controller.dart';

class AbsensiPage extends GetView<AbsenController> {
  const AbsensiPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Presensi'),
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            attendanceRow('Penjelajahan'),
            attendanceRow('Jambore'),
            attendanceRow('Perkemahan'),
            attendanceRow('Baris-Berbaris'),
            attendanceRow('Bersih Alat'),
            attendanceRow('Upacara'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.grid_on), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.access_time), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
        ],
      ),
    );
  }

  // Create a stateful widget for each attendance item
  Widget attendanceRow(String title) {
    // Create a state variable to track attendance status
    bool isPresent = false;

    return StatefulBuilder(
      builder: (context, setState) {
        return Card(
          margin: EdgeInsets.all(10),
          child: ListTile(
            leading: Container(
              width: 50,
              height: 50,
              child: Image.asset('assets/absen.png', fit: BoxFit.cover),
            ),
            title: Text(
              title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              isPresent ? 'Hadir' : 'Absen',
              style: TextStyle(color: Colors.white),
            ),
            trailing: ElevatedButton(
              onPressed: () {
                setState(() {
                  isPresent = !isPresent; // Toggle attendance status
                });
              },
              child: Text(
                isPresent ? 'Hadir' : 'Absen',
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: isPresent
                    ? Colors.green
                    : Colors.red, // Change button color
              ),
            ),
          ),
        );
      },
    );
  }
}
