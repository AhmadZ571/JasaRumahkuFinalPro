import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:jasarumahku/pages/maps/location_utils.dart';
import 'package:open_street_map_search_and_pick/open_street_map_search_and_pick.dart';

import '../servis_ac/confirmation_ac.dart';

class OSMHome extends StatefulWidget {
  final List<String> selectedIssuesAC1;
  final List<String> selectedIssuesAC2;
  OSMHome({
    required this.selectedIssuesAC1,
    required this.selectedIssuesAC2,
  });

  @override
  State<OSMHome> createState() => _OSMHomeState();
}

class _OSMHomeState extends State<OSMHome> {
  LatLng? _currentPosition;
  String locationaddress = "Pick Location";

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  Future<void> _getCurrentLocation() async {
    _currentPosition = await LocationUtils.getCurrentLocation();
    if (_currentPosition != null) {
      setState(() {});
    }
  }

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
              setState(
                () {
                  locationaddress = pickedData.addressName;
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ACConfirmation(
                        locationAddress: locationaddress,
                        selectedIssuesAC1: widget.selectedIssuesAC1,
                        selectedIssuesAC2: widget.selectedIssuesAC2,
                      ),
                    ),
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
