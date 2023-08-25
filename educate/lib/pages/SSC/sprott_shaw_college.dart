import 'package:educate/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class SprottShawCollege extends StatefulWidget {
  const SprottShawCollege({super.key});

  @override
  State<SprottShawCollege> createState() => _SprottShawCollegeState();
}

class _SprottShawCollegeState extends State<SprottShawCollege> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Stack(
          children: [
            Image.network(
              'https://b-f10-zpcloud.zdn.vn/2597593260941694273/b1be8c9d54ec87b2defd.jpg',
              height: screenHeight * 0.9,
              width: screenWidth,
              fit: BoxFit.fill,
            ),
            Container(
              alignment: Alignment.center,
              width: screenWidth,
              height: screenHeight * 0.9,
              color: Colors.white.withOpacity(0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Welcome to',
                    style: TextStyle(
                      color: const Color(0xff163E3A),
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'SPROTT SHAW COLLEGE',
                    style: TextStyle(
                      color: const Color.fromARGB(255, 0, 155, 190),
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Image.network(
                    'https://f10-zpcloud.zdn.vn/7716731129631228235/c8cefd7de3bd31e368ac.jpg',
                    width: screenWidth * 0.2,
                  ),
                ],
              ),
            ),
          ],
        ),
        const Banner1st(
          text: 'Lịch sử của \n SPROTT SHAW COLLEGE',
          color: Color(0xff00B4DB),
        ),
        Container(
          height: screenHeight * 0.025,
          decoration: const BoxDecoration(
              color: Color(0xff2D91A7),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20))),
        ),
        SizedBox(
          height: screenHeight * 1.1,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TaggetTextMP(
                  text:
                      'Cao đẳng Sprott Shaw có uy tín lâu năm trong việc trang bị cho sinh viên những cách suy nghĩ sáng tạo tại các địa điểm trong khuôn viên trường do chính phủ quy định. Chúng tôi có hơn 130 chương trình đại học tập trung vào nghề nghiệp, ngày bắt đầu hàng tháng, lịch trình linh hoạt và hỗ trợ sắp xếp nghề nghiệp.',
                ),
                const TaggetTextMP(
                  text:
                      'Cao đẳng Sprott Shaw được thành lập vào năm 1903 bởi Robert James Sprott và William Henry Shaw. Hai người đàn ông được truyền cảm hứng để thành lập một trường học cung cấp đào tạo cho lực lượng lao động đang phát triển ở British Columbia.',
                ),
                const TaggetTextMP(
                  text:
                      'Cơ sở đầu tiên của trường được đặt tại Vancouver, và nó cung cấp nhiều chương trình khác nhau về nghiên cứu kinh doanh, kế toán và thư ký. Trong những năm đầu, trường cũng cung cấp các khóa học hàm thụ cho những sinh viên không thể đến lớp trực tiếp.',
                ),
                const TaggetTextMP(
                  text:
                      'Sprott Shaw College tiếp tục phát triển trong những năm sau đó. Năm 1920, trường mở cơ sở mới ở Victoria, và năm 1952, trường mở cơ sở ở Kelowna. Trường cũng bắt đầu cung cấp các chương trình chuyên biệt hơn, chẳng hạn như điều dưỡng và kỹ thuật.',
                ),
                const TaggetTextMP(
                  text:
                      'Sprott Shaw College tiếp tục phát triển trong những năm sau đó. Năm 1920, trường mở cơ sở mới ở Victoria, và năm 1952, trường mở cơ sở ở Kelowna. Trường cũng bắt đầu cung cấp các chương trình chuyên biệt hơn, chẳng hạn như điều dưỡng và kỹ thuật.',
                ),
                Image.network(
                  'https://f10-zpcloud.zdn.vn/7716731129631228235/c8cefd7de3bd31e368ac.jpg',
                  width: screenWidth * 0.4,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: screenHeight * 0.025,
          decoration: const BoxDecoration(
              color: Color(0xff2D91A7),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
        ),
        const HomeStayContainer(),
      ],
    );
  }
}
