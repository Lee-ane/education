import 'package:educate/widgets/nganh_hoc_widget.dart';
import 'package:educate/widgets/yeu_cau_widget.dart';
import 'package:flutter/material.dart';

class NganhHocUCW extends StatefulWidget {
  const NganhHocUCW({super.key});

  @override
  State<NganhHocUCW> createState() => _NganhHocUCWState();
}

class _NganhHocUCWState extends State<NganhHocUCW> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const FirstBanner(title: 'MCC', color: Color(0xffD12030)),
        Stack(
          children: [
            Image.network(
              'https://b-f9-zpcloud.zdn.vn/1123663321910318661/8dc029601863ca3d9372.jpg',
            ),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.18),
              child: SizedBox(
                height: screenHeight * 0.6,
                width: screenWidth * 0.8,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TaggetText(text: 'Quản lý Tài chính.'),
                        TaggetText(text: 'Quản lý Nguyên vật liệu.'),
                        TaggetText(text: 'Quản lý Marketing.'),
                        TaggetText(text: 'Quản lý Nhân sự.'),
                        TaggetText(text: 'Quản lý Bán hàng và Kinh doanh.'),
                        TaggetText(text: 'Quản lý Quốc tế.'),
                        TaggetText(text: 'Quản lý Dự án Khoa học Dữ liệu.'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://f10-zpcloud.zdn.vn/553490070862747749/995635069a7a4924106b.jpg',
                          width: screenWidth * 0.1,
                        ),
                        SizedBox(height: screenHeight * 0.05),
                        Image.network(
                          'https://f10-zpcloud.zdn.vn/1985067612193040281/dde0e14e8b4d5913005c.jpg',
                          width: screenWidth * 0.2,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Container(
          height: screenHeight * 0.15,
          width: screenWidth,
          alignment: Alignment.center,
          color: const Color(0xffD12030),
          child: Text(
            'Theo dõi quá trình học ở Canada',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Stack(
          children: [
            Image.network(
                'https://b-f10-zpcloud.zdn.vn/3548636267418375952/bb3c19726d64bf3ae675.jpg'),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.18),
              child: SizedBox(
                height: screenHeight * 0.6,
                width: screenWidth * 0.8,
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TaggetText(
                      text:
                          'Cập nhật thông tin cho phụ huynh trong quá trình học ở Canada.',
                    ),
                    TaggetText(
                      text:
                          'Hỗ trợ du học sinh trong quá trình học ở Canada (nơi ở, sinh hoạt, đi lại,...).',
                    ),
                    TaggetText(
                      text:
                          'Chia sẽ thông tin về cơ hội việc làm cho du học sinh.',
                    ),
                    TaggetText(text: 'Chia sẽ thông tin lưu trú tại Canada.'),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
