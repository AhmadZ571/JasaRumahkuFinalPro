import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePageSection extends StatelessWidget {
  final int currentAdIndex;
  final CarouselController carouselController;
  final List<Map<String, dynamic>> adItems;

  const HomePageSection({
    Key? key,
    required this.currentAdIndex,
    required this.carouselController,
    required this.adItems,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.fromLTRB(25, 0, 0, 0),
          child: Row(
            children: [
              Container(
                width: 28,
                height: 28,
                child: Image.asset('assets/images/home_assets/logo_small.png'),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(8, 2, 0, 0),
                child: Text(
                  'JasaRumahku',
                  style: TextStyle(
                    fontFamily: 'Poppins',
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Color(0xff2d2d2d),
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 45, top: 10),
          child: SizedBox(
            width: 315,
            height: 141,
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: InkWell(
                    onTap: () {
                      print(currentAdIndex);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(12.0),
                      child: CarouselSlider(
                        items: adItems
                            .map(
                              (item) => Image.asset(
                                item['image_path'],
                                fit: BoxFit.cover,
                                width: double.infinity,
                              ),
                            )
                            .toList(),
                        carouselController: carouselController,
                        options: CarouselOptions(
                          scrollPhysics: const BouncingScrollPhysics(),
                          autoPlay: true,
                          aspectRatio: 2,
                          viewportFraction: 1,
                          onPageChanged: (index, reason) {
                            // Your existing onPageChanged logic
                          },
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 0,
                  right: 0,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: adItems.asMap().entries.map((entry) {
                      return GestureDetector(
                        onTap: () =>
                            carouselController.animateToPage(entry.key),
                        child: Container(
                          width: 8,
                          height: 8,
                          margin: EdgeInsets.symmetric(
                            horizontal: 3.0,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: currentAdIndex == entry.key
                                ? Colors.red
                                : Colors.grey,
                          ),
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        // Add something below the CarouselSlider
        Container(
          padding: EdgeInsets.only(right: 240, top: 10),
          color: Colors.white,
          child: Text(
            'Layanan',
            style: TextStyle(
              color: Colors.black,
              fontSize: 18.0,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),

        // Stuff Carry Section
        Positioned(
          left: 21,
          top: 20,
          child: Container(
            width: 317,
            height: 103,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Carry Section
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 16, 0),
                  child: TextButton(
                    onPressed: () {
                      // Your existing onPressed logic
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 62,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Carry Icon
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                            padding: EdgeInsets.fromLTRB(17, 21, 17.04, 19),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                begin: Alignment(0, -1),
                                end: Alignment(0.742, 1),
                                colors: <Color>[
                                  Color(0xe5ff0000),
                                  Color(0xe5db9e00)
                                ],
                                stops: <double>[0.271, 1],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(2, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 27.96,
                                height: 22,
                                child: Image.asset(
                                  'assets/images/home_assets/carry_icon.png',
                                  width: 27.96,
                                  height: 22,
                                ),
                              ),
                            ),
                          ),
                          // Carry Text
                          Container(
                            constraints: BoxConstraints(
                              maxHeight: 37,
                            ),
                            child: Text(
                              'Angkut Barang',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: Colors.grey[600],
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),

                // Electrical Repair Section
                Container(
                  margin: EdgeInsets.fromLTRB(0, 0, 23, 0),
                  child: TextButton(
                    onPressed: () {
                      // Handle Electrical Repair button press
                    },
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.zero,
                    ),
                    child: Container(
                      width: 62,
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // Electrical Repair Icon
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                            padding: EdgeInsets.fromLTRB(13, 8, 14, 9),
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(12),
                              gradient: LinearGradient(
                                begin: Alignment(0, -1),
                                end: Alignment(0.742, 1),
                                colors: <Color>[
                                  Color(0xe5ff0000),
                                  Color(0xe5db9e00)
                                ],
                                stops: <double>[0.271, 1],
                              ),
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0x3f000000),
                                  offset: Offset(2, 2),
                                  blurRadius: 2,
                                ),
                              ],
                            ),
                            child: Center(
                              child: SizedBox(
                                width: 35,
                                height: 45,
                                child: Image.asset(
                                  'assets/images/home_assets/electrical_icon.png',
                                  width: 35,
                                  height: 45,
                                ),
                              ),
                            ),
                          ),
                          // Electrical Repair Text
                          Container(
                            constraints: BoxConstraints(
                              maxWidth: 55,
                            ),
                            child: Text(
                              'Perbaikan Listrik',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Poppins',
                                fontSize: 10,
                                fontWeight: FontWeight.w500,
                                height: 1.5,
                                color: Colors.grey[600],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),

                // Plumbing Section
                Container(
                  padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                  height: double.infinity,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // Plumbing Section
                      Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 23, 0),
                        child: TextButton(
                          onPressed: () {
                            // Handle Plumbing button press
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Container(
                            width: 62,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                // Plumbing Icon
                                Container(
                                  margin: EdgeInsets.fromLTRB(0, 0, 0, 10),
                                  padding: EdgeInsets.fromLTRB(
                                      17.67, 17.67, 17.67, 17.67),
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: LinearGradient(
                                      begin: Alignment(0, -1),
                                      end: Alignment(0.742, 1),
                                      colors: <Color>[
                                        Color(0xe5ff0000),
                                        Color(0xe5db9e00)
                                      ],
                                      stops: <double>[0.271, 1],
                                    ),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3f000000),
                                        offset: Offset(2, 2),
                                        blurRadius: 2,
                                      ),
                                    ],
                                  ),
                                  child: Center(
                                    child: SizedBox(
                                      width: 26.67,
                                      height: 26.67,
                                      child: Image.asset(
                                        'assets/images/home_assets/pumbling_icon.png',
                                        width: 26.67,
                                        height: 26.67,
                                      ),
                                    ),
                                  ),
                                ),
                                // Plumbing Text
                                Container(
                                  constraints: BoxConstraints(
                                    maxWidth: 61,
                                  ),
                                  child: Text(
                                    'Perbaikan Saluran Air',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontFamily: 'Poppins',
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      height: 1.5,
                                      color: Colors.grey[600],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),

                      // Service AC section
                      Container(
                        width: 62,
                        child: TextButton(
                          onPressed: () {
                            // Handle Service AC button press
                          },
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // Service AC Icon
                              Container(
                                margin: EdgeInsets.fromLTRB(0, 0, 0, 11),
                                padding: EdgeInsets.fromLTRB(
                                    20.13, 17.97, 20.13, 17.97),
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(12),
                                  gradient: LinearGradient(
                                    begin: Alignment(0, -1),
                                    end: Alignment(0.742, 1),
                                    colors: <Color>[
                                      Color(0xe5ff0000),
                                      Color(0xe5db9e00)
                                    ],
                                    stops: <double>[0.271, 1],
                                  ),
                                  boxShadow: [
                                    BoxShadow(
                                      color: Color(0x3f000000),
                                      offset: Offset(2, 2),
                                      blurRadius: 2,
                                    ),
                                  ],
                                ),
                                child: Center(
                                  child: SizedBox(
                                    width: 21,
                                    height: 26,
                                    child: Image.asset(
                                      'assets/images/home_assets/ac_icon.png',
                                      width: 21.73,
                                      height: 26.07,
                                    ),
                                  ),
                                ),
                              ),
                              // Service AC Text
                              Container(
                                constraints: BoxConstraints(
                                  maxWidth: 61,
                                ),
                                child: Text(
                                  'Service AC',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                    fontFamily: 'Poppins',
                                    fontSize: 10,
                                    fontWeight: FontWeight.w500,
                                    height: 1.5,
                                    color: Colors.grey[600],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(0, 40, 13, 18),
          child: Text(
            'Fitur Andalan, sesuaikan kebutuhanmu',
            style: TextStyle(
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
              fontSize: 15,
            ),
          ),
        ),
      ],
    );
  }
}
