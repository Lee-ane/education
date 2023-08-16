import 'package:educate/widgets/nganh_hoc_widget.dart';
import 'package:educate/widgets/yeu_cau_widget.dart';
import 'package:flutter/material.dart';

class NganhHocCornerStone extends StatefulWidget {
  const NganhHocCornerStone({super.key});

  @override
  State<NganhHocCornerStone> createState() => _NganhHocCornerStoneState();
}

class _NganhHocCornerStoneState extends State<NganhHocCornerStone> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //Các ngành học tại Canada
        const FirstBanner(title: 'Cornerstone', color: Color(0xff27377B)),
        SizedBox(
          height: screenHeight * 0.6,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                'https://b-f10-zpcloud.zdn.vn/5753043040312368128/534e3294bb24687a3135.jpg',
                width: screenWidth,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TaggetText(text: 'Quản lý khách sạn.'),
                        TaggetText(text: 'Quản lý kinh doanh quốc tế.'),
                        TaggetText(text: 'Chuyên gia marketing kỹ thuật số.'),
                        TaggetText(text: 'Chuyên gia quan hệ khách hàng.'),
                        TaggetText(text: 'Giao diện người dùng UI/UX.'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.network(
                          'https://f10-zpcloud.zdn.vn/1517472673498356412/94bf7d5d3956ea08b347.jpg',
                          width: screenWidth * 0.1,
                        ),
                        Image.network(
                          'https://f10-zpcloud.zdn.vn/553490070862747749/995635069a7a4924106b.jpg',
                          width: screenWidth * 0.1,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.15,
          width: screenWidth,
          alignment: Alignment.center,
          color: const Color(0xff27377B),
          child: Text(
            'Theo dõi quá trình học ở Canada',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.7,
          child: Stack(
            children: [
              Image.network(
                'https://b-f10-zpcloud.zdn.vn/7239906147249059824/576e37c688765b280267.jpg',
                width: screenWidth,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.18),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TaggetText(
                        text:
                            'Cập nhật thông tin cho phụ huynh trong quá trình học ở Canada.'),
                    TaggetText(
                        text:
                            'Hỗ trợ du học sinh trong quá trình học ở Canada (nơi ơ, sinh hoạt, đi lại, ...).'),
                    TaggetText(
                        text:
                            'Chia sẽ thông tin về cơ hội việc làm cho du học sinh.'),
                    TaggetText(text: 'Chia sẽ thông tin lưu trú tại Canada.'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
