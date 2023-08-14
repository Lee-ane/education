import 'package:flutter/material.dart';

class BeeText extends StatelessWidget {
  final String text;
  final double width;
  const BeeText({super.key, required this.text, required this.width});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(
          'https://f9-zpcloud.zdn.vn/7144738739450596118/32d09fbd7eb6ade8f4a7.jpg',
          width: screenWidth * 0.015,
        ),
        SizedBox(
          width: width,
          child: Text(
            textAlign: TextAlign.justify,
            text,
            style: TextStyle(fontSize: screenWidth * 0.012),
            overflow: TextOverflow.clip,
          ),
        )
      ],
    );
  }
}
