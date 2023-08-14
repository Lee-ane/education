import 'package:flutter/material.dart';

class DotText extends StatelessWidget {
  final String text;
  const DotText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding:
          EdgeInsets.only(left: screenWidth * 0.35, top: screenHeight * 0.02),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
                top: screenHeight * 0.01, right: screenWidth * 0.005),
            child: Icon(
              Icons.circle,
              size: screenWidth * 0.005,
            ),
          ),
          SizedBox(
            width: screenWidth * 0.33,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.012,
                decoration: TextDecoration.none,
                overflow: TextOverflow.clip,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class TaggetText extends StatelessWidget {
  final String text;
  const TaggetText({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://f10-zpcloud.zdn.vn/6551643814542194901/878f3c947083a3ddfa92.jpg',
          width: screenWidth * 0.015,
        ),
        SizedBox(
          width: screenWidth * 0.5,
          child: Text(
            text,
            style: TextStyle(
              color: Colors.black,
              fontSize: screenWidth * 0.012,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }
}

class TargetTextMP extends StatelessWidget {
  final String text;
  const TargetTextMP({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://f10-zpcloud.zdn.vn/6551643814542194901/878f3c947083a3ddfa92.jpg',
          width: screenWidth * 0.015,
        ),
        SizedBox(
          width: screenWidth * 0.7,
          child: Text(
            text,
            style: TextStyle(
              color: const Color(0xff14483E),
              fontSize: screenWidth * 0.015,
              decoration: TextDecoration.none,
              wordSpacing: screenWidth * 0.0025,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ],
    );
  }
}

class TableText extends StatelessWidget {
  final int step;
  final String text;
  final Color color;
  const TableText(
      {super.key, required this.step, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.2,
      height: screenHeight * 1.1,
      color: color,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
              vertical: screenHeight * 0.05,
            ),
            child: Text(
              'Bước $step',
              style: TextStyle(
                color: const Color(0xffDEC328),
                fontSize: screenWidth * 0.02,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.02,
            ),
            child: Text(
              text,
              style: TextStyle(
                color: Colors.white,
                fontSize: screenWidth * 0.013,
                fontWeight: FontWeight.bold,
                wordSpacing: screenWidth * 0.0025,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}
