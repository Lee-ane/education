import 'package:educate/widgets/nganh_hoc_widget.dart';
import 'package:educate/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class NganhHocUFV extends StatefulWidget {
  const NganhHocUFV({super.key});

  @override
  State<NganhHocUFV> createState() => _NganhHocUFVState();
}

class _NganhHocUFVState extends State<NganhHocUFV> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        const FirstBanner(title: 'UFV', color: Color(0xff163E3A)),
        Stack(
          children: [
            Image.network(
              'https://b-f9-zpcloud.zdn.vn/2374508408894883823/80f5afc8ba8f68d1319e.jpg',
              height: screenHeight * 0.7,
              fit: BoxFit.fill,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.13),
              child: SizedBox(
                height: screenHeight * 0.7,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        TaggetTextUser(text: 'Giao tiếp kinh doanh.'),
                        TaggetTextUser(
                          text:
                              'Chuẩn thi đo lường mức độ thành thạo tiếng Anh của Canada.',
                        ),
                        TaggetTextUser(text: 'Hoạt động khách sạn.'),
                        TaggetTextUser(
                            text: 'Quản lý toàn cầu trong khách sạn.'),
                        TaggetTextUser(
                          text: 'Trợ lý pháp lý nâng cao (Không có Co-op).',
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://f9-zpcloud.zdn.vn/221199795928889263/f64df79798b04aee13a1.jpg',
                          width: screenWidth * 0.2,
                        ),
                        Image.network(
                          'https://f10-zpcloud.zdn.vn/553490070862747749/995635069a7a4924106b.jpg',
                          width: screenWidth * 0.2,
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
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
                padding: EdgeInsets.only(left: screenWidth * 0.13),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    TaggetTextUser(
                        text:
                            'Cập nhật thông tin cho phụ huynh trong quá trình học ở Canada.'),
                    TaggetTextUser(
                        text:
                            'Hỗ trợ du học sinh trong quá trình học ở Canada (nơi ở, sinh hoạt, đi lại,...).'),
                    TaggetTextUser(
                        text:
                            'Chia sẽ thông tin về cơ hội việc làm cho du học sinh.'),
                    TaggetTextUser(
                      text: 'Chia sẽ thông tin lưu trú tại Canada.',
                    ),
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
