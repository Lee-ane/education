import 'package:educate/widgets/yeu_cau_widget.dart';
import 'package:flutter/material.dart';

class YeuCauEsport extends StatefulWidget {
  const YeuCauEsport({super.key});

  @override
  State<YeuCauEsport> createState() => _YeuCauEsportState();
}

class _YeuCauEsportState extends State<YeuCauEsport> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.75,
          child: Stack(
            children: [
              Image.network(
                'https://b-f10-zpcloud.zdn.vn/3933830340657240581/b36ca9e932cce092b9dd.jpg',
                width: screenWidth,
                height: screenHeight * 0.75,
                fit: BoxFit.fill,
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Container(
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.6,
                  color: Colors.grey[400],
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(
                        'Yêu cầu nhập học',
                        style: TextStyle(
                          fontSize: screenWidth * 0.035,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Image.network(
                            'https://f9-zpcloud.zdn.vn/7389250081905753821/fb553b245a9789c9d086.jpg',
                            width: screenWidth * 0.05,
                          ),
                          Image.network(
                            'https://b-f10-zpcloud.zdn.vn/5939136782770804963/40b92300ac117e4f2700.jpg',
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
        ),
        Stack(
          children: [
            Image.network(
              'https://b-f9-zpcloud.zdn.vn/4845026957181253632/3617bdd255f787a9dee6.jpg',
              height: screenHeight * 1.6,
            ),
            SizedBox(
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset(
                    'controller.png',
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.05),
                    child: Text(
                      'Hạn chót nộp đơn',
                      style: TextStyle(
                          fontSize: screenWidth * 0.02,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.35),
                    child: SizedBox(
                      height: screenHeight * 0.1,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TaggetText(text: '4 Tuần trước khi bắt đầu lớp học.'),
                          TaggetText(
                              text:
                                  'Có thể nhập học muộn dựa trên lượng tiêu thụ*.'),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: screenHeight * 0.05),
                    child: Text(
                      'Yêu cầu nhập học',
                      style: TextStyle(
                          fontSize: screenWidth * 0.02,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: screenWidth * 0.25),
                    child: SizedBox(
                      height: screenHeight * 0.7,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TaggetText(
                              text:
                                  'Hoàn thành chương trình trung học hoặc ít nhất 19 tuổi khi là học sinh trưởng thành và đáp ứng một trong các yêu cầu ngôn ngữ.'),
                          TaggetText(
                              text:
                                  'Điểm C+ cho môn Tiếng Anh 12 hoặc tương đương tại một trường Trung học ở Canada.'),
                          TaggetText(
                              text:
                                  'IELTS-Học thuật tổng điểm 5.5, hoặc các bài kiểm tra tương đương của bên thứ ba được quốc tế công nhận như TOEFL IBT hoặc CAEL.'),
                          TaggetText(
                              text:
                                  'Hoàn thành xuất sắc Chương trình Chuẩn bị Tiếng Anh cho Nghiên cứu Học thuật (EPAS), hoặc Chương trình Giao tiếp Kinh doanh.'),
                          TaggetText(
                              text:
                                  'Vượt qua thành công bài kiểm tra trình độ ngôn ngữ của trường với 75%.'),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
