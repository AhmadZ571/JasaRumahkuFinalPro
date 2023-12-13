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
          title: Text(
            'Waktu Layanan',
            style: TextStyle(color: Colors.white),
          ),
          leading: IconButton(icon: Icon(Icons.arrow_back), onPressed: () {}),
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
  DateTime? tanggalSurvey;
  TimeOfDay? jamSurvey;
  DateTime? tanggalPerbaikan;
  TimeOfDay? jamPerbaikan;

  final format = DateFormat("yyyy-MM-dd HH:mm");

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: <Widget>[
                    buildDateField(
                      title: 'Tanggal Survey',
                      value: tanggalSurvey,
                      onTap: () => pickDate(context, isTanggalSurvey: true),
                    ),
                    buildTimeField(
                      title: 'Masukan Jam Survey',
                      value: jamSurvey,
                      onTap: () => pickTime(context, isJamSurvey: true),
                    ),
                    Divider(),
                    buildDateField(
                      title: 'Tanggal Perbaikan',
                      value: tanggalPerbaikan,
                      onTap: () => pickDate(context, isTanggalSurvey: false),
                    ),
                    buildTimeField(
                      title: 'Masukan Jam Perbaikan',
                      value: jamPerbaikan,
                      onTap: () => pickTime(context, isJamSurvey: false),
                    ),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(bottom: 300),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              child: Text(
                'Selanjutnya',
                style: TextStyle(color: Colors.white),
              ),
              onPressed: () {
                // Handle button press
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.red,
                padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
              ),
            ),
          ),
        ),
      ],
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

  Future<void> pickDate(BuildContext context,
      {required bool isTanggalSurvey}) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime.now(),
      lastDate: DateTime(DateTime.now().year + 1),
    );

    if (pickedDate != null) {
      setState(() {
        if (isTanggalSurvey) {
          tanggalSurvey = pickedDate;
        } else {
          tanggalPerbaikan = pickedDate;
        }
      });
    }
  }

  Future<void> pickTime(BuildContext context,
      {required bool isJamSurvey}) async {
    TimeOfDay? pickedTime = await showTimePicker(
      context: context,
      initialTime: TimeOfDay.now(),
    );

    if (pickedTime != null) {
      setState(() {
        if (isJamSurvey) {
          jamSurvey = pickedTime;
        } else {
          jamPerbaikan = pickedTime;
        }
      });
    }
  }
}

class InputField extends StatelessWidget {
  final String title;
  final bool isTime;

  InputField({required this.title, this.isTime = false});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(top: 16, bottom: 8),
          child: Text(title, style: TextStyle(fontWeight: FontWeight.bold)),
        ),
        TextField(
          decoration: InputDecoration(
            hintText: isTime ? 'HH:MM' : 'DD/MM/YYYY',
            prefixIcon:
                isTime ? Icon(Icons.access_time) : Icon(Icons.calendar_today),
            border: OutlineInputBorder(),
          ),
          keyboardType: isTime ? TextInputType.datetime : TextInputType.text,
        ),
      ],
    );
  }
}
