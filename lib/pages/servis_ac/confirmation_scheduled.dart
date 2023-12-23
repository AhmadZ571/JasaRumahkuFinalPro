import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class ACConfirmation extends StatefulWidget {
  final List<String> selectedIssuesAC1;
  final List<String> selectedIssuesAC2;
  final String combinedSolutionsAC1;
  final String locationAddress;
  final int totalPriceAC1;
  final String combinedSolutionsAC2;
  final int totalPriceAC2;
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;

  ACConfirmation({
    required this.selectedIssuesAC1,
    required this.selectedIssuesAC2,
    required this.combinedSolutionsAC1,
    required this.locationAddress,
    required this.totalPriceAC1,
    required this.combinedSolutionsAC2,
    required this.totalPriceAC2,
    required this.selectedDate,
    required this.selectedTime,
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
                height: 10,
              ),
              Text(
                'Perbaikan yang akan dilakukan',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Text(
                'AC 1: ' + '${widget.combinedSolutionsAC1}',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Text(
                'AC 2: ' + '${widget.combinedSolutionsAC2}',
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
              Text(
                'Jadwal Perbaikan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.red,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${DateFormat('EEEE, dd MMMM yyyy').format(widget.selectedDate!)}',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '${widget.selectedTime!.format(context)}',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                // Add a Divider widget here
                color: Colors.grey, // Choose your preferred color for the line
                thickness: 1.0, // Adjust the thickness of the line
                height: 20, // Adjust the height between the text and the line
              ),
              Text(
                'Total Biaya',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Biaya Servis AC',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Rp ${widget.totalPriceAC1 + widget.totalPriceAC2}',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
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
              SizedBox(
                height: 15,
              ),
              Text(
                'Perbaikan yang akan dilakukan',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              Text(
                '${widget.combinedSolutionsAC1}',
                style: TextStyle(
                  fontFamily: 'Nunito',
                  fontWeight: FontWeight.w600,
                  fontSize: 12,
                ),
              ),
              SizedBox(height: 10),
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
              SizedBox(
                height: 10,
              ),
              Text(
                'Jadwal Perbaikan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                  color: Colors.red,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '${DateFormat('EEEE, dd MMMM yyyy').format(widget.selectedDate!)}',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                  Spacer(),
                  Text(
                    '${widget.selectedTime!.format(context)}',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w600,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Divider(
                // Add a Divider widget here
                color: Colors.grey, // Choose your preferred color for the line
                thickness: 1.0, // Adjust the thickness of the line
                height: 20, // Adjust the height between the text and the line
              ),
              Text(
                'Total Biaya',
                style: TextStyle(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.red,
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Biaya Servis AC',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                  Spacer(),
                  Text(
                    'Rp ${widget.totalPriceAC1}',
                    style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ],
            Spacer(), // Pushes buttons to the bottom
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MyButton(
                  onTap: () {
                    showAlert(context, 'Pesanan Berhasil',
                        'Cek pesananmu dalam Aktivitas', 'Kembali');
                  },
                  text: 'Jadwalkan',
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

void showAlert(
    BuildContext context, String title, String message, String buttonText) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(32.0)),
        contentPadding: EdgeInsets.all(0),
        content: Container(
          width: 329.0,
          height: 379.0,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration:
                      BoxDecoration(color: Colors.red, shape: BoxShape.circle),
                  child: Image.asset(
                      'assets/images/home_assets/complete_order.png'),
                ),
              ),
              SizedBox(height: 20),
              Text(title,
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  )),
              Text(message,
                  style: TextStyle(
                      fontFamily: 'Nunito',
                      fontWeight: FontWeight.w500,
                      fontSize: 16)),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pop(),
                child: Text(
                  buttonText,
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.red),
                ),
              ),
            ],
          ),
        ),
      );
    },
  );
}
