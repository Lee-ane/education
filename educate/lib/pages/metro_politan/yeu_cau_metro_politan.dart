import 'package:educate/widgets/yeu_cau_widget.dart';
import 'package:flutter/material.dart';

class YeuCauMetroPolitan extends StatefulWidget {
  const YeuCauMetroPolitan({super.key});

  @override
  State<YeuCauMetroPolitan> createState() => _YeuCauMetroPolitanState();
}

class _YeuCauMetroPolitanState extends State<YeuCauMetroPolitan> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Stack(
      children: [
        Image.network(
          'https://b-f10-zpcloud.zdn.vn/4433814121559258165/1da9341c0657d4098d46.jpg',
        ),
        Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.78,
            left: screenHeight * 0.03,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Yêu cầu nhập học',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.03,
                  decoration: TextDecoration.none,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.1,
                    horizontal: screenWidth * 0.1),
                child: const TargetTextMP(
                  text:
                      'Chúng tôi khuyến khích các sinh viên tương lai xem xét việc cung cấp chương trình của chúng tôi và chào đón những sinh viên đủ tiêu chuẩn đăng ký nhập học vào các chương trình của chúng tôi.',
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: screenWidth * 0.4,
                  top: screenHeight * 0.03,
                  bottom: screenHeight * 0.03,
                ),
                child: Text(
                  'CÁCH NHẬP HỌC',
                  style: TextStyle(
                    color: const Color(0xff14483E),
                    fontWeight: FontWeight.bold,
                    fontSize: screenWidth * 0.02,
                    decoration: TextDecoration.none,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: screenWidth * 0.075,
                  vertical: screenHeight * 0.03,
                ),
                child: const Row(
                  children: [
                    TableText(
                      step: 1,
                      text: 'Gửi mẫu đơn trực tuyến và trả lệ phí nộp đơn.',
                      color: Color(0xff8DD1CA),
                    ),
                    TableText(
                      step: 2,
                      text:
                          'Gửi các tài liệu cần thiết, chẳng hạn như: \n \n + Passport / ID. \n \n + Bảng điểm (trung học phổ thông và sau trung học) \n \n + Chứng chỉ tiếng anh (IELTS). \n \n + Giấy phép học tập hoặc thị thực du lịch, nếu có (đối với sinh viên quốc tế).',
                      color: Color(0xff41BAAE),
                    ),
                    TableText(
                      step: 3,
                      text:
                          'Chúng tôi sẽ xem xét đơn đăng ký và đưa ra Thư mời nhập học nếu các yêu cầu nhập học được đáp ứng.',
                      color: Color(0xff2B7C74),
                    ),
                    TableText(
                      step: 4,
                      text:
                          'Khi nhận được khoản thanh toán học phí, chúng tôi sẽ cấp Thư chấp nhận chính thức (LOA) nêu rõ số tiền nhận được và chi tiết về việc đăng ký chương trình. \n \n Sinh viên quốc tế có thể sử dụng LOA chính thức để xin giấy phép du học trước khi bắt đầu chương trình.',
                      color: Color(0xff094035),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.41),
                child: Image.network(
                  'https://f9-zpcloud.zdn.vn/7389250081905753821/fb553b245a9789c9d086.jpg',
                  width: screenWidth * 0.12,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
