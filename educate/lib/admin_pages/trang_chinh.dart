import 'package:educate/widgets/admin_widget.dart';
import 'package:flutter/material.dart';

class TrangChuAd extends StatefulWidget {
  const TrangChuAd({super.key});

  @override
  State<TrangChuAd> createState() => _TrangChuAdState();
}

class _TrangChuAdState extends State<TrangChuAd> {
  String username = 'Username';

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'TRANG CHỦ',
          style: TextStyle(
              fontWeight: FontWeight.bold, fontSize: screenWidth * 0.02),
        ),
        Text(
          'CHÀO MỪNG TRỞ LẠI, $username',
          style: TextStyle(fontSize: screenWidth * 0.02),
        ),
        Padding(
          padding: EdgeInsets.symmetric(vertical: screenHeight * 0.02),
          child: Image.asset(
            'admin_banner.jpg',
            width: screenWidth * 0.68,
            height: screenHeight * 0.4,
            fit: BoxFit.fill,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AdminBT(
              onPressed: () {},
              text1: 'Công việc',
              text2: 'OXF/ENG/01',
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.035),
              child: AdminBT(
                onPressed: () {},
                text1: 'Diploma in English',
                text2: 'OXF/ENG/01',
              ),
            ),
            AdminBT(
              onPressed: () {},
              text1: 'Diploma in English',
              text2: 'OXF/ENG/01',
            ),
          ],
        ),
      ],
    );
  }
}
