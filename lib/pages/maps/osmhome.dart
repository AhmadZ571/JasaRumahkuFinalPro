import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

class OSMHome extends StatefulWidget {
  const OSMHome({super.key});

  @override
  State<OSMHome> createState() => _OSMHomeState();
}

class _OSMHomeState extends State<OSMHome> {
  String locationaddress = "Pick Location";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Pilih Lokasi',
          style: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w600,
            color: Colors.white,
            fontSize: 18,
          ),
        ),
      ),
      body: Container(
        // color: Colors.red,
        child: Center(
          child: OpenStreetMapSearchAndPick(
              center: LatLong(-7.983908, 112.621391),
              buttonColor: Colors.red,
              buttonText: 'Selanjutnya',
              onPicked: (pickedData) {
                setState(() {
                  locationaddress = pickedData.addressName;
                });
              }),
        ),
      ),
    );
  }
}

//modal bottom sheet

void _showModal(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          height: 600,
          // color: Colors.red,
          child: Center(
            child: OpenStreetMapSearchAndPick(
                center: LatLong(-7.983908, 112.621391),
                buttonColor: Colors.blue,
                buttonText: 'Set Current Location',
                onPicked: (pickedData) {}),
          ),
        );
      });
}
