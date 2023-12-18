import 'package:flutter/material.dart';
import 'package:jasarumahku/pages/maps/osmhome.dart';

class service_ac extends StatefulWidget {
  @override
  _ServiceInformationPageState createState() => _ServiceInformationPageState();
}

class _ServiceInformationPageState extends State<service_ac> {
  Widget buildCheckboxListTile(
    String title,
    bool variableName, {
    dynamic Function(bool?)? onChanged,
  }) {
    return CheckboxListTile(
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'Nunito',
          fontSize: 14,
          fontWeight: FontWeight.w600,
        ),
      ),
      value: variableName,
      activeColor: Colors.grey,
      tristate: true,
      checkColor: Colors.white,
      tileColor: Colors.white,
      controlAffinity: ListTileControlAffinity.leading,
      onChanged: onChanged ?? (newBool) => setState(() => variableName),
    );
  }

  //AC 1
  bool isLeaking1 = false;
  bool isLessCooling1 = false;
  bool isDusting1 = false;
  bool wontTurnOn1 = false;
  bool soundIssue1 = false;
  bool smellIssue1 = false;
  bool shakingIssue1 = false;
  bool electricIssue1 = false;
  bool fanIssue1 = false;
  bool isNotCooling1 = false;

  //AC 2
  bool isLeaking2 = false;
  bool isNotCooling2 = false;
  bool isDusting2 = false;
  bool isLessCooling2 = false;
  bool wontTurnOn2 = false;
  bool soundIssue2 = false;
  bool smellIssue2 = false;
  bool shakingIssue2 = false;
  bool electricIssue2 = false;
  bool fanIssue2 = false;

  bool isVisible = false;

  bool isButton = true;
  String problemDetails = ''; // Variable to store text field value
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          'Detail Masalah',
          style: TextStyle(color: Colors.white),
        ),
        leading: BackButton(),
        flexibleSpace: Container(
          width: 360,
          height: 71,
          decoration: BoxDecoration(color: Color(0xffff0000)),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 30,
                left: 30,
                right: 30,
                bottom: 25,
              ),
              child: Padding(
                padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                child: Container(
                  height: 630,
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Permasalahan AC 1',
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w600,
                          fontSize: 11,
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Apa masalah yang anda alami?',
                        style: TextStyle(
                          fontFamily:
                              'Poppins', // You can customize the style as needed
                          fontSize: 12,
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      buildCheckboxListTile('Kurang dingin', isLessCooling1),
                      buildCheckboxListTile('Berdebu', isDusting1),
                      buildCheckboxListTile('Bocor', isLeaking1),
                      buildCheckboxListTile('Tidak dingin', isNotCooling1),
                      buildCheckboxListTile('Tidak dapat menyala', wontTurnOn1),
                      buildCheckboxListTile(
                          'Terdengar suara bising', soundIssue1),
                      buildCheckboxListTile('Berbau tidak sedap', smellIssue1),
                      buildCheckboxListTile(
                          'Bergetar saat menyala', shakingIssue1),
                      buildCheckboxListTile(
                          'Tidak dapat terhubung ke listrik', electricIssue1),
                      buildCheckboxListTile(
                          'Kipas AC tidak berputar', fanIssue1),
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isButton,
              child: Padding(
                padding: const EdgeInsets.only(right: 144),
                child: ElevatedButton.icon(
                  onPressed: () {
                    setState(() {
                      isButton = !isButton;
                      isVisible = !isVisible;
                    });
                  },
                  label: Text('Tambah AC'),
                  icon: Icon(Icons.add),
                ),
              ),
            ),
            Visibility(
              visible: isVisible,
              child: Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                  left: 30,
                  right: 30,
                  bottom: 25,
                ),
                child: Padding(
                  padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
                  child: Container(
                    height: 630,
                    alignment: Alignment.topLeft,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(color: Colors.black),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Permasalahan AC 2',
                          style: TextStyle(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w600,
                            fontSize: 11,
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'Apa masalah yang anda alami?',
                          style: TextStyle(
                            fontFamily:
                                'Poppins', // You can customize the style as needed
                            fontSize: 12,
                            color: Colors.black,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        buildCheckboxListTile('Kurang dingin', isLessCooling2),
                        buildCheckboxListTile('Berdebu', isDusting2),
                        buildCheckboxListTile('Bocor', isLeaking2),
                        buildCheckboxListTile('Tidak dingin', isNotCooling2),
                        buildCheckboxListTile(
                            'Tidak dapat menyala', wontTurnOn2),
                        buildCheckboxListTile(
                            'Terdengar suara bising', soundIssue2),
                        buildCheckboxListTile(
                            'Berbau tidak sedap', smellIssue2),
                        buildCheckboxListTile(
                            'Bergetar saat menyala', shakingIssue2),
                        buildCheckboxListTile(
                            'Tidak dapat terhubung ke listrik', electricIssue2),
                        buildCheckboxListTile(
                            'Kipas AC tidak berputar', fanIssue2),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(bottom: 20),
              child: Align(
                alignment: Alignment.bottomCenter,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => OSMHome()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.red,
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 50),
                  ),
                  child: Text(
                    'Selanjutnya',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
