import 'package:educate/widgets/yeu_cau_widget.dart';
import 'package:flutter/material.dart';

class NganhHocMetroPolitan extends StatefulWidget {
  const NganhHocMetroPolitan({super.key});

  @override
  State<NganhHocMetroPolitan> createState() => _NganhHocMetroPolitanState();
}

class _NganhHocMetroPolitanState extends State<NganhHocMetroPolitan> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        //Các ngành học tại Canada
        SizedBox(
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
                  color: const Color(0xff163E3A),
                  child: Text(
                    'Các ngành học tại MCC',
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
        ),
        SizedBox(
          height: screenHeight * 0.6,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                'https://b-f9-zpcloud.zdn.vn/2374508408894883823/80f5afc8ba8f68d1319e.jpg',
                width: screenWidth,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: EdgeInsets.only(left: screenWidth * 0.18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TaggetText(text: 'Giao tiếp kinh doanh.'),
                        TaggetText(
                            text:
                                'Chuẩn thi đo lường mức độ thành thạo tiếng Anh của Canada.'),
                        TaggetText(text: 'Hoạt động khách sạn.'),
                        TaggetText(text: 'Quản lý toàn cầu trong khách sạn.'),
                        TaggetText(
                            text: 'Trợ lý pháp lý nâng cao (Không có Co-op).'),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://f9-zpcloud.zdn.vn/7389250081905753821/fb553b245a9789c9d086.jpg',
                          width: screenWidth * 0.1,
                        ),
                        Image.network(
                          'https://f10-zpcloud.zdn.vn/553490070862747749/995635069a7a4924106b.jpg',
                          width: screenWidth * 0.1,
                        ),
                      ],
                    ),
                    Image.network(
                      'https://f9-zpcloud.zdn.vn/5993877497933051252/5d3c42616526b778ee37.jpg',
                      height: screenHeight * 0.55,
                      width: screenWidth * 0.2,
                      fit: BoxFit.fill,
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
          color: const Color(0xff163E3A),
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
                'https://b-f10-zpcloud.zdn.vn/3584072140704397862/b496c425fc622e3c7773.jpg',
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
