import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Waktu_layanan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Waktu Layanan AC',
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(
            'Waktu Layanan',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              }),
          flexibleSpace: Container(
            width: 360,
            height: 71,
            decoration: BoxDecoration(color: Color(0xffff0000)),
          ),
        ),
        body: WaktuLayananAC(),
      ),
    );
  }
}

class WaktuLayananAC extends StatefulWidget {
  @override
  _WaktuLayananACState createState() => _WaktuLayananACState();
}

class _WaktuLayananACState extends State<WaktuLayananAC> {
  DateTime? tanggalPerbaikan;
  TimeOfDay? jamPerbaikan;

  // Variables to store user selections
  DateTime? selectedDate;
  TimeOfDay? selectedTime;

  final format = DateFormat("yyyy-MM-dd HH:mm");

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                buildDateField(
                  title: 'Tanggal Perbaikan',
                  value: selectedDate ?? tanggalPerbaikan,
                  onTap: () => pickDate(context),
                ),
                buildTimeField(
                  title: 'Masukan Jam Perbaikan',
                  value: selectedTime ?? jamPerbaikan,
                  onTap: () => pickTime(context),
                ),
                SizedBox(height: 20),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 20),
            child: Align(
              alignment: Alignment.bottomCenter,
              child: ElevatedButton(
                child: Text(
                  'Selanjutnya',
                  style: TextStyle(color: Colors.white),
                ),
                onPressed: () {
                  // Handle button press
                  print('Selected Date: $selectedDate');
                  print('Selected Time: $selectedTime');
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.red,
                  padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDateField({
    required String title,
    required DateTime? value,
    required VoidCallback onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  value == null
                      ? 'Pilih Tanggal'
                      : '${value.day}/${value.month}/${value.year}',
                ),
                Icon(Icons.calendar_today),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget buildTimeField({
    required String title,
    required TimeOfDay? value,
    required VoidCallback onTap,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        GestureDetector(
          onTap: onTap,
          child: Container(
            height: 48,
            padding: EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  value == null ? 'Pilih Jam' : '${value.hour}:${value.minute}',
                ),
                Icon(Icons.access_time),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Future<void> pickDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (pickedDate != null) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  Future<void> pickTime(BuildContext context) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        selectedTime = pickedTime;
      });
    }
  }
}
