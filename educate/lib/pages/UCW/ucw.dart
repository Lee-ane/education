import 'package:educate/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class UCW extends StatefulWidget {
  const UCW({super.key});

  @override
  State<UCW> createState() => _UCWState();
}

class _UCWState extends State<UCW> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        const MainBanner(
          logoURL:
              'https://f10-zpcloud.zdn.vn/6958763682390654692/97bfc6d01889cad79398.jpg',
          title: 'UNIVERSITY OF CANADA WEST',
          color: Colors.white,
        ),
        const Banner1st(
          text: 'UNIVERSITY OF CANADA WEST',
          color: Color(0xffD12030),
        ),
        Container(
          height: screenHeight * 0.03,
          decoration: const BoxDecoration(
            color: Color(0xffE9DB89),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.9,
          child: Padding(
            padding: EdgeInsets.only(
              top: screenHeight * 0.05,
              left: screenWidth * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const TaggetTextMP(
                  text:
                      'Lịch sử và thành tựu: Được thành lập vào năm 2004, UCW có lịch sử tương đối trẻ nhưng nhanh chóng được sự công nhận vì cam kết với xuất sắc học thuật và thành công của sinh viên. Trong suốt những năm qua, UCW đã nhận được nhiều giải thưởng và thành tựu, bao gồm:',
                ),
                const PlusText(
                  text:
                      'Sự công nhận: UCW là một cơ sở giáo dục được công nhận và cấp phép, đảm bảo chất lượng và tính toàn vẹn của chương trình học.',
                ),
                const PlusText(
                  text:
                      'Đối tác: UCW đã thiết lập quan hệ đối tác với các tổ chức và đại học hàng đấu trên toàn thế giới, mang đến cho sinh viên những cơ hội quan trọng về mạng lưới kết nối với quan hệ toàn cấu.',
                ),
                const PlusText(
                  text:
                      'Sự thành công của cựu sinh viên: UCW tự hào về các cựu sinh viên thành công của mình, người đã đạt được những thành tựu lớn trong sự nghiệp. Nhiều cựu sinh viên đã trở thành những nhà lãnh đạo trong ngành, doanh nhân và những chuyên gia có ảnh hưởng trong lĩnh vực của mình.',
                ),
                const PlusText(
                  text:
                      'Nghiên cứu và đổi mới: UCW đẩy mạnh nghiên cứu và đổi mới giữa giảng viên và sinh viên, đóng góp vào sự tiến bộ trong các lĩnh vực khác nhau và tạo ảnh hưởng tích cực đến xã hội.',
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.05),
                  child: const TaggetTextMP(
                    text:
                        'Là một sinh viên tại Đại học Canada West, bạn sẽ tham gia vào một cộng đồng sôi động và hỗ trợ, cam kết đến sự phát triển cá nhân và chuyên môn của bạn. Hãy khám phá các chương trình học tại UCW và chuẩn bị cho một tương lai thành công và rực rỡ trong môi trường học tập tuyệt vời này.',
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          height: screenHeight * 0.03,
          decoration: const BoxDecoration(
            color: Color(0xffD12030),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            ),
          ),
        ),
        const HomeStayContainer(),
        Image.network(
          'https://f10-zpcloud.zdn.vn/236882579335083234/ab4ec5e0cae318bd41f2.jpg',
          height: screenHeight * 0.05,
          width: screenWidth,
          fit: BoxFit.fill,
        ),
        const Esport(),
        Image.network(
          'https://f10-zpcloud.zdn.vn/236882579335083234/ab4ec5e0cae318bd41f2.jpg',
          height: screenHeight * 0.05,
          width: screenWidth,
          fit: BoxFit.fill,
        ),
        const Blogs(),
      ],
    );
  }
}
