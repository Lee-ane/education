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
