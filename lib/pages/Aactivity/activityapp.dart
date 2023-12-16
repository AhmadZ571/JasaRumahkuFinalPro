import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class activityapp extends StatefulWidget {
  @override
  _ActivityAppState createState() => _ActivityAppState();
}

class _ActivityAppState extends State<activityapp> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 20,
          ),
          Text(
            'Aktivitas',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoSegmentedControl<int>(
              selectedColor: Colors.red,
              children: {
                0: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    'Riwayat',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                1: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    'Berlangsung',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
                2: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 14),
                  child: Text(
                    'Dijadwalkan',
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ),
              },
              onValueChanged: (int value) {
                setState(() {
                  _selectedIndex = value;
                });
              },
              groupValue: _selectedIndex,
            ),
          ),
          Expanded(
            child: Center(
              child: Text(
                'Belum Ada Aktivitas Apapun',
                style: TextStyle(fontWeight: FontWeight.w600),
              ),
            ),
          ),
          // Additional content goes here
        ],
      ),
    );
  }
}
