import 'package:educate/widgets/nganh_hoc_widget.dart';
import 'package:educate/widgets/yeu_cau_widget.dart';
import 'package:flutter/material.dart';

class YeuCauCornerStone extends StatefulWidget {
  const YeuCauCornerStone({super.key});

  @override
  State<YeuCauCornerStone> createState() => _YeuCauCornerStoneState();
}

class _YeuCauCornerStoneState extends State<YeuCauCornerStone> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(
            height: screenHeight * 0.9,
            child: Stack(
              children: [
                Image.network(
                  'https://b-f9-zpcloud.zdn.vn/4877481381911142506/06dee00bc8851bdb4294.jpg',
                  width: screenWidth,
                  fit: BoxFit.fill,
                ),
                Align(
                  alignment: Alignment.bottomLeft,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            horizontal: screenWidth * 0.025),
                        child: Image.network(
                          'https://f10-zpcloud.zdn.vn/1378720492417214213/09175b6653e880b6d9f9.jpg',
                          width: screenWidth * 0.08,
                          height: screenHeight * 0.13,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Text(
                        'Yêu cầu nhập học',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.03,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: screenHeight * 1.3,
            child: Stack(
              children: [
                Image.network(
                  'https://b-f10-zpcloud.zdn.vn/2985481572302460857/5f1fb3e5826b5135087a.jpg',
                  width: screenWidth,
                  fit: BoxFit.fill,
                ),
                Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.25, top: screenHeight * 0.05),
                      child: const TaggetText(
                        text:
                            'Tất cả sinh viên muốn đăng ký chương trình diploma hoặc các khóa học ngôn ngữ phải gửi bản sao của trang đầu hộ chiếu của mình. Yêu cầu nhập học có thể thay đổi cho từng loại chương trình.',
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.025),
                      child: Text(
                        'Yêu cầu nhập học cho các khóa học tiếng anh',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.02,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(
                            left: screenWidth * 0.25, top: screenHeight * 0.02),
                        child: const TaggetText(
                            text:
                                'Tất cả sinh viên đăng ký các khóa học tiếng anh sẽ phải tham gia bài kiểm tra trình độ tiếng anh của CICC để phân lớp và xác định lộ trình phù hợp nhằm phát triển khả năng tiếng anh.')),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: screenHeight * 0.025),
                      child: Text(
                        'Yêu cầu nhập học cho chương trình diploma',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: screenWidth * 0.02,
                          decoration: TextDecoration.none,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.25, top: screenHeight * 0.02),
                      child: const TaggetText(
                        text:
                            'Tất cả ứng viên cho chương trình diploma sẽ phải tham gia bài kiểm tra trình độ ngôn ngữ của mình cụ thể là tiếng anh do CICC để phân lớp và xác định lộ trình phù hợp cho từng cá nhân, trừ khi sinh viên có kết quả đạt chỉ tiêu ngôn ngữ khác. Sinh viên phải đáp ứng được các yêu cầu đầu vào để có thể tham gia chương trình diploma.',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.05),
                      child: const CheckBoxText(
                        text:
                            'Tốt nghiệp trung học hoặc trình độ tương đương; hoặc đủ 18 tuổi.',
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: screenWidth * 0.05),
                      child: const CheckBoxText(
                        text:
                            'Trình độ tiếng anh tối thiểu đạt một trong các yêu cầu sau đây:',
                      ),
                    ),
                    const DotText(
                        text: 'Tiếng anh 12 - điểm cuối kỳ tối thiểu "C"'),
                    const DotText(
                        text: 'Văn học tiếng anh 12 - điểm tối thiểu "C"'),
                    const DotText(
                        text: 'Giao tiếp 12 - điểm cuối kỳ tối thiểu "B"'),
                    const DotText(
                      text:
                          'Tiếng anh 12 dân tộc bản địa - điểm cuối kỳ tối thiểu "C"',
                    ),
                    const DotText(
                      text:
                          'Giao tiếp kỹ thuật và chuyên nghiệp 12 - điểm tối thiểu "C" hoặc tiếng anh hoặc văn học - điểm tối thiểu 3',
                    ),
                    const DotText(
                        text: 'IB Tiếng anh A (SL) - điểm tối thiểu 3'),
                    const DotText(
                        text: 'TOEFL PBT - 513; CBT - 183; ibt - 65;'),
                    const DotText(
                        text:
                            'Ielts academic - 5.5, hoặc bài kiểm tra vị trí cornerstone - trình độ trung cấp cao'),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
