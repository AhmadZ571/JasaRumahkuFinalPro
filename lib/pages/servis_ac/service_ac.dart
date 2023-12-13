import 'package:flutter/material.dart';

class service_ac extends StatefulWidget {
  @override
  _ServiceInformationPageState createState() => _ServiceInformationPageState();
}

class _ServiceInformationPageState extends State<service_ac> {
  bool isLeaking = false;
  bool isNotCooling = false;
  bool wontTurnOn = false;
  String problemDetails = ''; // Variable to store text field value

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Informasi Layanan',
          style: TextStyle(color: Colors.white),
        ),
        leading: BackButton(),
        flexibleSpace: Container(
          width: 360,
          height: 71,
          decoration: BoxDecoration(color: Color(0xffff0000)),
        ),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: <Widget>[
          Text(
            'Pilih Jenis Layanan yang Anda Butuhkan*',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          CheckboxListTile(
            title: Text('AC Bocor'),
            value: isLeaking,
            onChanged: (bool? value) {
              setState(() {
                isLeaking = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('AC Tidak Dingin'),
            value: isNotCooling,
            onChanged: (bool? value) {
              setState(() {
                isNotCooling = value!;
              });
            },
          ),
          CheckboxListTile(
            title: Text('AC Tidak Dapat Menyala'),
            value: wontTurnOn,
            onChanged: (bool? value) {
              setState(() {
                wontTurnOn = value!;
              });
            },
          ),
          SizedBox(height: 20),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                color: Color.fromARGB(255, 255, 0, 0),
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(8.0),
            ),
            child: TextFormField(
              maxLines: 3,
              onChanged: (value) {
                // Update the variable when the text field value changes
                setState(() {
                  problemDetails = value;
                });
              },
              decoration: InputDecoration(
                labelText: 'Detail Mengenai Masalah Anda*',
                hintText: 'Contoh: AC Mengeluarkan suara bising dan keras',
                contentPadding: EdgeInsets.all(8.0),
              ),
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Access the selected values and text field value here
              print('AC Bocor: $isLeaking');
              print('AC Tidak Dingin: $isNotCooling');
              print('AC Tidak Dapat Menyala: $wontTurnOn');
              print('Problem Details: $problemDetails');
            },
            style: ElevatedButton.styleFrom(
              primary: Color.fromARGB(255, 244, 59, 46),
            ),
            child: Text(
              'Selanjutnya',
              style: TextStyle(
                color: Colors.white, // Set text color to white
              ),
            ),
          ),
        ],
      ),
    );
  }
}
