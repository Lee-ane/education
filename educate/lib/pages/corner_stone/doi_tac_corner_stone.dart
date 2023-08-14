import 'package:educate/widgets/doi_tac.dart';
import 'package:educate/widgets/nganh_hoc_widget.dart';
import 'package:flutter/material.dart';

class DoiTacCornerStone extends StatefulWidget {
  const DoiTacCornerStone({super.key});

  @override
  State<DoiTacCornerStone> createState() => _DoiTacCornerStoneState();
}

class _DoiTacCornerStoneState extends State<DoiTacCornerStone> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Center(
      child: SizedBox(
        height: screenHeight * 1.8,
        child: Stack(
          children: [
            Image.network(
              'https://b-f9-zpcloud.zdn.vn/3158994747804616313/40246d3123bff0e1a9ae.jpg',
              width: screenWidth,
              fit: BoxFit.fill,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Container(
                  alignment: Alignment.center,
                  height: screenHeight * 0.1,
                  width: screenWidth * 0.9,
                  decoration: BoxDecoration(
                    color: Colors.yellow[400],
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                  ),
                  child: Text(
                    'Đối tác hỗ trợ việc làm Beeznests',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: screenWidth * 0.04,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: screenHeight * 0.1,
                  ),
                  child: BeeText(
                    text:
                        'Tất cả sinh viên đăng ký và học bằng đôi (dual diplomas) tại Cornerstone sẽ được nhận gói dịch vụ từ beeznests (công ty nhân sự kết nối sinh viên với các công ty tại Vancouver)',
                    width: screenWidth * 0.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth * 0.5,
                      screenHeight * 0.1, 0, screenHeight * 0.2),
                  child: BeeText(
                    text:
                        'Beeznests connection ltd., Là một nền tảng "công việc tự do của sinh viên" tuyệt vời để kết nối sinh viên với doanh nghiệp và cá nhân trên toàn thế giới.',
                    width: screenWidth * 0.3,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.2),
                  child: BeeText(
                    text:
                        'Beeznests tạo ra cơ hội làm việc từ xa và ngắn hạn cho sinh viên, giúp chuẩn bị cho sinh viên, giúp chuẩn bị cho sinh viên những thực tập và công viêc toàn thời gian trong tương lai.',
                    width: screenWidth * 0.5,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.05),
                  child: Stack(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        width: screenWidth * 0.5,
                        height: screenHeight * 0.15,
                        decoration: BoxDecoration(
                          color: Colors.yellow[400],
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(10),
                          child: Text(
                            'Nhiều cơ hội kết nối với các công ty cung cấp độc quyền chỉ dành cho sinh viên được tuyển tại Vancourse.',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: screenWidth * 0.015,
                              overflow: TextOverflow.clip,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(
                            top: screenHeight * 0.08, left: screenWidth * 0.38),
                        child: Image.network(
                          'https://f10-zpcloud.zdn.vn/7911456773650291564/bd492b4ae440371e6e51.jpg',
                          width: screenWidth * 0.07,
                        ),
                      )
                    ],
                  ),
                ),
                const CheckBoxText(
                  text:
                      'Buổi hội thảo thông tin: tổ chức các buổi hội thảo để cung cấp thông tin cho sinh viên về Canada và thị trường việc làm tại đây, cung cấp thông tin tổng quan về đất nước, các nguồn lực tích hợp và thảo luận về các tài liệu liên quan đến công việc.',
                ),
                const CheckBoxText(
                  text:
                      'Cơ hội mạng lưới độc quyền: dành cho sinh viên xuất sắc dựa trên sự tham gia và tiến bộ của sinh viên, chúng tôi cung cấp cơ hội mạng lưới độc quyền.',
                ),
                const CheckBoxText(
                  text:
                      'Học tập dựa trên dự án - 2 dự án cho mỗi sinh viên: cung cấp cơ hội cho sinh viên làm việc trên các dự án tùy chỉnh, trong đó có một dự án được dẫn dắt bởi một nhà lãnh đạo ngành công nghiệp. Các dự án sẽ kéo dài ít nhất một tháng.',
                ),
                const CheckBoxText(
                  text:
                      'Cơ hội việc làm độc quyền: cung cấp thông tin về các cơ hội việc làm độc quyền cho sinh viên.',
                ),
                const CheckBoxText(
                  text:
                      'Tư vấn hàng tháng: cung cấp tư vấn hàng tháng cho sinh viên, trong đó trả lời câu hỏi và các đề xuất liên quan đến sự phát triển sự nghiệp.',
                ),
                const CheckBoxText(
                  text:
                      'Các buổi hội thảo: tổ chức các buổi hội thảo, bao gồm:',
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.015),
                  child: SizedBox(
                    width: screenWidth * 0.4,
                    child: Text(
                      '- Buổi tập phỏng vấn mô phỏng: tổ chức các buổi tập phỏng vấn mô phỏng để giúp sinh viên luyện tập và cải thiện kỹ năng phỏng vấn.',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: screenHeight * 0.015),
                  child: SizedBox(
                    width: screenWidth * 0.4,
                    child: Text(
                      '- Buổi thuyết trình của diễn giả khách mời: mời các chuyên gia từ các ngành công nghiệp khác nhau như nhà hàng, marketing, công nghệ, ... Để chia sẽ hiểu biết về xu hướng trong ngành của họ.',
                      style: TextStyle(
                        fontSize: screenWidth * 0.011,
                      ),
                    ),
                  ),
                ),
                const CheckBoxText(
                  text:
                      'Tư vấn khách hàng: cung cấp các buổi tư vấn hàng tháng cá nhân hoặc nhóm để giải quyết những nhu cầu cụ thể liên quan đến hướng phát triển sự nghiệp của sinh viên và cung cấp hướng dẫn cá nhân hóa.',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
