import 'package:flutter/material.dart';

//Trang chủ

class FooterTB extends StatelessWidget {
  final String text;
  final void Function()? function;
  const FooterTB({super.key, required this.text, required this.function});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
      child: TextButton(
        onPressed: function,
        child: Text(
          text,
          style: TextStyle(
              color: const Color(0xff767676),
              fontSize: screenWidth * 0.01,
              decoration: TextDecoration.none),
        ),
      ),
    );
  }
}

class FooterCategory extends StatelessWidget {
  final String title;
  const FooterCategory({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.only(bottom: screenWidth * 0.03),
      child: Text(
        title,
        style: TextStyle(
            color: Colors.black,
            fontSize: screenWidth * 0.015,
            fontWeight: FontWeight.bold,
            decoration: TextDecoration.none),
      ),
    );
  }
}

class FooterSlogan extends StatelessWidget {
  const FooterSlogan({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SizedBox(
      width: screenWidth * 0.2,
      child: Text(
        'Tầm nhìn cung cấp một  nền  giáo dục chất lượng và dễ tiếp cận cho sinh viên từ nhiều nền văn hóa khác nhau.',
        style: TextStyle(
            color: const Color(0xff767676),
            fontSize: screenWidth * 0.012,
            decoration: TextDecoration.none),
        overflow: TextOverflow.clip,
        textAlign: TextAlign.justify,
      ),
    );
  }
}
