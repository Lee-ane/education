import 'package:educate/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class FraserValley extends StatefulWidget {
  const FraserValley({super.key});

  @override
  State<FraserValley> createState() => _FraserValleyState();
}

class _FraserValleyState extends State<FraserValley> {
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
                  Image.network(
                    'https://f9-zpcloud.zdn.vn/221199795928889263/f64df79798b04aee13a1.jpg',
                    width: screenWidth * 0.2,
                  ),
                  Text(
                    'Welcome to',
                    style: TextStyle(
                      color: const Color(0xff163E3A),
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'UNIVERSITY OF THE',
                    style: TextStyle(
                      color: const Color(0xff00703C),
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'FRASER VALLEY',
                    style: TextStyle(
                      color: const Color(0xff7CB232),
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Banner1st(
          text: 'Lịch sử của \n UNIVERSITY OF THE FRASER VALLEY',
          color: Color(0xff00703C),
        ),
        Container(
          height: screenHeight * 0.025,
          decoration: const BoxDecoration(
              color: Color(0xff7CB232),
              borderRadius:
                  BorderRadius.only(bottomRight: Radius.circular(20))),
        ),
        SizedBox(
          height: screenHeight * 0.9,
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const TaggetTextMP(
                  text:
                      'The University of the Fraser Valley (UFV) được thành lập năm 1974 với tên gọi Fraser Valley College (FVC). Đó là một phản ứng đối với nhu cầu đào tạo nghề mở rộng trong các cộng đồng của Fraser Valley.',
                ),
                const TaggetTextMP(
                  text:
                      'FVC ban đầu cung cấp một số lượng hạn chế các chương trình, nhưng nó đã nhanh chóng mở rộng để cung cấp nhiều chương trình học thuật và dạy nghề hơn. Năm 1988, FVC trở thành trường cao đẳng đại học, với tư cách cấp bằng.',
                ),
                const TaggetTextMP(
                  text:
                      'Trường đổi tên thành Đại học Thung lũng Fraser vào năm 2008. Ngày nay, UFV là một trường Đại học toàn diện với hơn 15.000 sinh viên. Nó cung cấp hơn 100 chương trình đại học và sau đại học, và được biết đến với sự tập trung mạnh mẽ vào sự thành công của sinh viên.',
                ),
                const TaggetTextMP(
                  text:
                      'UFV nằm ở trung tâm Thung lũng Fraser, một vùng của British Columbia, Canada. Trường có hai cơ sở, một ở Chiliwack và một ở Abbotsford.',
                ),
                const TaggetTextMP(
                  text:
                      'UFV cam kết cung cấp một nền giáo dục chất lượng cao cho sinh viên từ mọi thành phần. Trường đại học cung cấp nhiều chương trình hỗ trợ tài chính sinh viên và đây cũng là nơi có Trung tâm Thổ dân Thung lũng Fraser, nơi cung cấp hỗ trợ cho sinh viên Bản địa.',
                ),
                const TaggetTextMP(
                  text:
                      'UFV là một trường đại học sôi động và đang phát triển. Đó là một nơi tuyệt vời để học hỏi, phát triển và thành công.',
                ),
                Image.network(
                  'https://f9-zpcloud.zdn.vn/221199795928889263/f64df79798b04aee13a1.jpg',
                  width: screenWidth * 0.4,
                ),
              ],
            ),
          ),
        ),
        Container(
          height: screenHeight * 0.025,
          decoration: const BoxDecoration(
              color: Color(0xff00703C),
              borderRadius: BorderRadius.only(topRight: Radius.circular(20))),
        ),
        const HomeStayContainer(),
        Image.network(
          'https://f10-zpcloud.zdn.vn/3097765708335250168/74d91af465d3b78deec2.jpg',
          width: screenWidth,
          height: screenHeight * 0.05,
          fit: BoxFit.fill,
        ),
        const Blogs(),
      ],
    );
  }
}
