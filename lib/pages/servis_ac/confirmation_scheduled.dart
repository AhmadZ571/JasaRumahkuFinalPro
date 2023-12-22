import 'package:flutter/material.dart';
import 'package:jasarumahku/pages/servis_ac/waktu_layanan_ac.dart';

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
            color: Colors.white,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Layanan',
              style: TextStyle(
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w600,
                fontSize: 20,
                color: Colors.red,
              ),
            ),
            if (widget.selectedIssuesAC2.isNotEmpty) ...[
              Text(
                'Servis AC',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Detail Masalah AC 1',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              for (String issue in widget.selectedIssuesAC1)
                Text(
                  '- $issue',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              SizedBox(height: 20),
              Text(
                'Detail Masalah AC 2:',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              for (String issue in widget.selectedIssuesAC2)
                Text(
                  '- $issue',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Alamat',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.red,
                ),
              ),
              Text(
                widget.locationAddress,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ] else ...[
              SizedBox(
                height: 20,
              ),
              Text(
                'Detail Masalah AC',
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              for (String issue in widget.selectedIssuesAC1)
                Text(
                  '- $issue',
                  style: TextStyle(
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                  ),
                ),
              SizedBox(height: 20),
              Text(
                'Alamat',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.red,
                ),
              ),
              Text(
                widget.locationAddress,
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
            ],
            Spacer(), // Pushes buttons to the bottom
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ImageButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Waktu_layanan()),
                    );
                  },
                  imagePath:
                      'assets/images/home_assets/schedule_button.png', // Replace with actual path
                ),
                SizedBox(width: 10), // Adjust the spacing between buttons
                MyButton(
                  onTap: () {
                    // Handle button press
                    print('Button Pressed');
                  },
                  text: 'Pesan Sekarang',
                  width: 255,
                  height: 50,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ImageButton extends StatelessWidget {
  const ImageButton({Key? key, required this.onTap, required this.imagePath})
      : super(key: key);

  final Function()? onTap;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.white, // Change the color as needed
          borderRadius: BorderRadius.circular(15),
        ),
        child: Image.asset(
          imagePath,
        ),
      ),
    );
  }
}

class MyButton extends StatelessWidget {
  const MyButton(
      {Key? key,
      required this.onTap,
      required this.text,
      this.width,
      this.height})
      : super(key: key);

  final Function()? onTap;
  final String text;
  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: width,
        height: height,
        padding: EdgeInsets.all(15),
        decoration: BoxDecoration(
          color: Colors.red,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
