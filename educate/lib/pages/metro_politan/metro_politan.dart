import 'package:educate/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class MetroPolitan extends StatefulWidget {
  const MetroPolitan({super.key});

  @override
  State<MetroPolitan> createState() => _MetroPolitanState();
}

class _MetroPolitanState extends State<MetroPolitan> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        //Main banner
        const MainBanner(
          logoURL:
              'https://f9-zpcloud.zdn.vn/7389250081905753821/fb553b245a9789c9d086.jpg',
          title: 'Metropolitan \n Comunity College',
          color: Color(0xff163E3A),
        ),
        //1st
        const Banner1st(
          text: 'Lịch sử của \n Metropolitan Community College',
          color: Color(0xff163E3A),
        ),
        Container(
          height: screenHeight * 0.025,
          decoration: const BoxDecoration(
            color: Color(0xffE9DB89),
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(30),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
          child: SizedBox(
            height: screenHeight * 0.9,
            child: const Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TaggetTextMP(
                  text:
                      'Được thành lập từ năm 1993, Metropolitan Comunity College là một học viện sau trung học của Canada được đăng ký và chỉ định bởi chi nhánh Tổ chức Đào tạo Tư Nhân (PTIB) của Bộ giáo dục, Kỹ năng và Đào tạo nâng cao tại tỉnh British Columbia.',
                ),
                TaggetTextMP(
                  text:
                      'Quá trình chỉ định thường nghiêm ngặt và chuyên sâu nhằm thể hiện sự đảm bảo với công chúng rằng trường đã đáp ứng (và tiếp tục đáp ứng) sự giám sát hành chính và học thuật khá mở rộng của cơ quan quản lý.',
                ),
                TaggetTextMP(
                  text:
                      'Trường cũng được Bộ Di Trú, Người tị nạn và Quốc tịch Canada công nhận là cơ sở học tập được chỉ định (DLI #019329963492). Chỉ định DLI cho phép sinh viên quốc tế muốn học tập tại Canda nộp đơn xin giấy phép du học Canda, do đó tạo ra một môi trường học tập đa dạng cho sinh viên từ khắp nơi trên thế giới. Sinh viên đăng ký vào các chương trình học được phép làm việc bán thời gian (tối đa 20 giờ mỗi tuần).',
                ),
                TaggetTextMP(
                  text:
                      'Được cơ quan đảm bảo chất lượng giáo dục British Columbia (BC EQA) công nhận, Cao đẳng cộng đồng Metropolitan đã được thành lập lâu đời và tự hào nhận được sự công nhận từ nhiều tổ chức.',
                ),
                TaggetTextMP(
                  text:
                      'Tại Cao đẳng cộng đồng Metropolitan các dịch vụ chưogn trình luôn cập nhật để đảm bảo các chương trình vượt nhu cầu kiến thức của nền kinh tế đang phát triển. Vì vậy, các chương trình không chỉ được thiết kế chuyên nghiệp với chất lượng cao mà còn độc đáo với "tư duy cầu tiên".',
                ),
                TaggetTextMP(
                  text:
                      'Hầu hết các khóa học được cung cấp với quy mô lớp học nhỏ với cách giảng dạy tương tác và nhập vai. MCC thực sự là một cộng đồng giúp người học với cách tiếp cận tự do, cho phép người học từ mọi thành phần xã hội và văn hóa có thể tiếp cận các khóa học.',
                ),
                TaggetTextMP(
                  text:
                      'Ban cố vấn thường xuyên kiểm tra năng lực với các chương trình của trường để đảm bảo học sinh của trường đạt được mục tiêu học tập và nghề nghiệp bằng cách học tập tích cực.',
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.025),
          child: Image.network(
              'https://b-f9-zpcloud.zdn.vn/6857191786372304485/b1b55758b4eb67b53efa.jpg'),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.05),
          child: Container(
            height: screenHeight * 0.05,
            decoration: const BoxDecoration(
              color: Color(0xff163E3A),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20)),
            ),
          ),
        ),
        //Quy trình kết nối homestay
        const HomeStayContainer(),
        Image.network(
          'https://f10-zpcloud.zdn.vn/7528497189618805475/3ed8efce147dc7239e6c.jpg',
          width: screenWidth,
          height: screenHeight * 0.025,
          fit: BoxFit.fill,
        ),
        //E-sport Education
        const Esport(),
        Image.network(
          'https://f10-zpcloud.zdn.vn/5978989413556832011/d214e8a9f71b24457d0a.jpg',
          width: screenWidth,
          height: screenHeight * 0.05,
          fit: BoxFit.fill,
        ),
        //Blogs
        const Blogs(),
      ],
    );
  }
}
