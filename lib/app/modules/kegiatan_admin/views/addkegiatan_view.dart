// lib/pages/add_event_page.dart

import 'package:flutter/material.dart';

import '../controllers/addkegiatan_controller.dart';
import 'event_card.dart';

class AddEventPage extends StatefulWidget {
  @override
  _AddEventPageState createState() => _AddEventPageState();
}

class _AddEventPageState extends State<AddEventPage> {
  final AddkegiatanController _eventController = AddkegiatanController();
  DateTime _selectedDate = DateTime.now();
  TimeOfDay _selectedTime = TimeOfDay.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );
    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: _selectedTime,
    );
    if (picked != null && picked != _selectedTime) {
      setState(() {
        _selectedTime = picked;
      });
    }
  }

  void _showEventDialog({int? index}) {
    String name = index != null ? _eventController.events[index].name : '';
    String location =
        index != null ? _eventController.events[index].location : '';
    String description =
        index != null ? _eventController.events[index].description : '';

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(index != null ? 'Edit Kegiatan' : 'Tambah Kegiatan'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Nama Kegiatan'),
                onChanged: (value) {
                  name = value;
                },
                controller: TextEditingController(text: name),
              ),
              TextButton(
                onPressed: () => _selectDate(context),
                child: Text(
                  'Tanggal: ${_eventController.formatDate(_selectedDate)}',
                ),
              ),
              TextButton(
                onPressed: () => _selectTime(context),
                child: Text(
                  'Jam: ${_eventController.formatTime(_selectedTime, context)}',
                ),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Lokasi'),
                onChanged: (value) {
                  location = value;
                },
                controller: TextEditingController(text: location),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Deskripsi'),
                onChanged: (value) {
                  description = value;
                },
                controller: TextEditingController(text: description),
              ),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                if (name.isNotEmpty) {
                  setState(() {
                    if (index != null) {
                      // Update existing event
                      _eventController.updateEvent(
                        index,
                        name,
                        _selectedDate,
                        _selectedTime,
                        location,
                        description,
                      );
                    } else {
                      // Add new event
                      _eventController.addEvent(
                        name,
                        _selectedDate,
                        _selectedTime,
                        location,
                        description,
                      );
                    }
                  });
                  Navigator.of(context).pop();
                }
              },
              child: Text('Simpan'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tambah Kegiatan'),
        backgroundColor: Colors.green,
      ),
      body: Column(
        children: [
          // Calendar view
          Container(
            padding: EdgeInsets.all(16.0),
            child: Column(
              children: [
                Text(
                  'Pilih Tanggal Kegiatan',
                  style: TextStyle(fontSize: 18),
                ),
                TextButton(
                  onPressed: () => _selectDate(context),
                  child: Text(
                    'Tanggal: ${_eventController.formatDate(_selectedDate)}',
                  ),
                ),
                TextButton(
                  onPressed: () => _selectTime(context),
                  child: Text(
                    'Jam: ${_eventController.formatTime(_selectedTime, context)}',
                  ),
                ),
              ],
            ),
          ),
          // Button to add event
          FloatingActionButton(
            onPressed: () => _showEventDialog(),
            child: Icon(Icons.add),
            backgroundColor: Colors.green,
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _eventController.events.length,
              itemBuilder: (context, index) {
                final event = _eventController.events[index];
                return EventCard(
                  event: {
                    'name': event.name,
                    'date': _eventController.formatDate(event.date),
                    'time': _eventController.formatTime(event.time, context),
                    'location': event.location,
                    'description': event.description,
                  },
                  onEdit: () => _showEventDialog(index: index),
                  onDelete: () {
                    setState(() {
                      _eventController.deleteEvent(index);
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
