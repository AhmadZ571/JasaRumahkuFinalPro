import 'package:flutter/material.dart';

class ACConfirmation extends StatefulWidget {
  final String locationAddress;
  final List<String> selectedIssuesAC1;
  final List<String> selectedIssuesAC2;

  ACConfirmation({
    required this.locationAddress,
    required this.selectedIssuesAC1,
    required this.selectedIssuesAC2,
  });

  @override
  State<ACConfirmation> createState() => _ACConfirmationState();
}

class _ACConfirmationState extends State<ACConfirmation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Konfirmasi',
          style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 20,
              color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Location Address:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Text(
              widget.locationAddress,
              style: TextStyle(fontSize: 16),
            ),
            SizedBox(height: 20),
            Text(
              'AC 1 Selected Issues:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            for (String issue in widget.selectedIssuesAC1)
              Text(
                '- $issue',
                style: TextStyle(fontSize: 16),
              ),
            SizedBox(height: 20),
            Text(
              'AC 2 Selected Issues:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            for (String issue in widget.selectedIssuesAC2)
              Text(
                '- $issue',
                style: TextStyle(fontSize: 16),
              ),
          ],
        ),
      ),
    );
  }
}
