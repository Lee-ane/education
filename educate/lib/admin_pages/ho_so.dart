import 'package:educate/widgets/admin_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HoSo extends StatefulWidget {
  const HoSo({super.key});

  @override
  State<HoSo> createState() => _HoSoState();
}

class _HoSoState extends State<HoSo> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: screenHeight * 0.03),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02),
              child: Text(
                'HỒ SƠ',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.018,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
            child: SizedBox(
              width: screenWidth * 0.4,
              height: screenHeight * 0.3,
              child: Padding(
                padding: EdgeInsets.all(screenWidth * 0.02),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: screenWidth * 0.1,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.black),
                    ),
                    Padding(
                      padding: EdgeInsets.all(screenWidth * 0.02),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HoSoText(title: 'Mã', text: '21-023145'),
                          HoSoText(
                              title: 'College',
                              text: 'College of Arts and Sciences'),
                          HoSoText(
                              title: 'Department',
                              text: 'Information Technology'),
                          HoSoText(
                              title: 'Subjects',
                              text: 'Web Development (IT121)'),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.15),
            child: Divider(
              height: screenHeight * 0.001,
              thickness: screenHeight * 0.002,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
            child: SizedBox(
              width: screenWidth * 0.4,
              height: screenHeight * 0.1,
              child: const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  HoSoText(title: 'Username', text: '21-023145'),
                  HoSoText(title: 'Email', text: 'abc@gmail.com'),
                  HoSoText(title: 'Password', text: '*******'),
                ],
              ),
            ),
          ),
          Container(
            width: screenWidth * 0.4,
            height: screenHeight * 0.13,
            decoration: BoxDecoration(
              color: Colors.grey[300],
              borderRadius: BorderRadius.circular(15),
            ),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HoSoText(title: 'College', text: 'CAS'),
                    HoSoText(title: 'Degree', text: 'BSInfoTech'),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    HoSoText(title: 'Curriculum', text: 'BSIT K12 2020-2021'),
                    HoSoText(
                        title: 'Admission', text: 'A.Y.2021-2022 I Mid-Year'),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: screenWidth * 0.15, vertical: screenHeight * 0.03),
            child: Divider(
              height: screenHeight * 0.001,
              thickness: screenHeight * 0.002,
              color: Colors.black,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(FontAwesomeIcons.circleInfo, size: screenWidth * 0.01),
                Text(
                  ' Account Deactivation Policy',
                  style: TextStyle(
                      color: Colors.black, fontSize: screenWidth * 0.01),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
