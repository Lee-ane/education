import 'package:flutter/material.dart';

class CheckBoxText extends StatelessWidget {
  final String text;
  const CheckBoxText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          EdgeInsets.only(left: screenWidth * 0.25, top: screenHeight * 0.015),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(
            Icons.check_box,
            size: screenWidth * 0.013,
          ),
          SizedBox(
            width: screenWidth * 0.6,
            child: Text(
              text,
              style: TextStyle(
                fontSize: screenWidth * 0.011,
                decoration: TextDecoration.none,
                color: Colors.black,
              ),
              overflow: TextOverflow.clip,
              textAlign: TextAlign.justify,
            ),
          )
        ],
      ),
    );
  }
}

class FirstBanner extends StatelessWidget {
  final String title;
  final Color color;
  const FirstBanner({super.key, required this.title, required this.color});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      height: screenHeight * 0.4,
      child: Stack(
        children: [
          Image.network(
            'https://b-f9-zpcloud.zdn.vn/4537398644149439469/cda0139bfd942eca7785.jpg',
            width: screenWidth,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.bottomLeft,
            child: Container(
              height: screenHeight * 0.1,
              width: screenWidth * 0.8,
              alignment: Alignment.center,
              color: color,
              child: Text(
                'Các ngành học tại $title',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
