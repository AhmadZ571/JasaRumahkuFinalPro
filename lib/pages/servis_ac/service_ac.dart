import 'package:flutter/material.dart';
import 'package:jasarumahku/pages/servis_ac/waktu_layanan_ac.dart';

class service_ac extends StatefulWidget {
  @override
  _ServiceInformationPageState createState() => _ServiceInformationPageState();
}

class _ServiceInformationPageState extends State<service_ac> {
  bool? isLeaking = false;
  bool? isNotCooling = false;
  bool? isDusting = false;
  bool wontTurnOn = false;
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
                  height: 300,
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
                      CheckboxListTile(
                        title: const Text(
                          'AC Bocor',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        value: isLeaking,
                        activeColor: Colors.grey,
                        tristate: true,
                        checkColor: Colors.white,
                        tileColor: Colors.white,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (newBool) {
                          setState(() {
                            isLeaking = newBool;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text(
                          'AC tidak dingin',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        value: isNotCooling,
                        activeColor: Colors.grey,
                        tristate: true,
                        checkColor: Colors.white,
                        tileColor: Colors.white,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (newBool) {
                          setState(() {
                            isNotCooling = newBool;
                          });
                        },
                      ),
                      CheckboxListTile(
                        title: const Text(
                          'AC Berdebu',
                          style: TextStyle(
                            fontFamily: 'Nunito',
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        value: isDusting,
                        activeColor: Colors.grey,
                        tristate: true,
                        checkColor: Colors.white,
                        tileColor: Colors.white,
                        controlAffinity: ListTileControlAffinity.leading,
                        onChanged: (newBool) {
                          setState(() {
                            isDusting = newBool;
                          });
                        },
                      ),
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
                      isVisible = !isVisible;
                      isButton = !isButton;
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
                    height: 300,
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
                        CheckboxListTile(
                          title: const Text(
                            'AC Bocor',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          value: isLeaking,
                          activeColor: Colors.grey,
                          tristate: true,
                          checkColor: Colors.white,
                          tileColor: Colors.white,
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (newBool) {
                            setState(() {
                              isLeaking = newBool;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text(
                            'AC tidak dingin',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          value: isNotCooling,
                          activeColor: Colors.grey,
                          tristate: true,
                          checkColor: Colors.white,
                          tileColor: Colors.white,
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (newBool) {
                            setState(() {
                              isNotCooling = newBool;
                            });
                          },
                        ),
                        CheckboxListTile(
                          title: const Text(
                            'AC Berdebu',
                            style: TextStyle(
                              fontFamily: 'Nunito',
                              fontSize: 14,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          value: isDusting,
                          activeColor: Colors.grey,
                          tristate: true,
                          checkColor: Colors.white,
                          tileColor: Colors.white,
                          controlAffinity: ListTileControlAffinity.leading,
                          onChanged: (newBool) {
                            setState(() {
                              isDusting = newBool;
                            });
                          },
                        ),
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
                      MaterialPageRoute(builder: (context) => Waktu_layanan()),
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
