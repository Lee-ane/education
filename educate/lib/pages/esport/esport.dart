import 'package:educate/widgets/user_widget.dart';
import 'package:educate/widgets/yeu_cau_widget.dart';
import 'package:flutter/material.dart';

class EsportScreen extends StatefulWidget {
  const EsportScreen({super.key});

  @override
  State<EsportScreen> createState() => _EsportScreenState();
}

class _EsportScreenState extends State<EsportScreen> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Column(
      children: [
        SizedBox(
          height: screenHeight * 0.9,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                'https://b-f10-zpcloud.zdn.vn/3029524667564318178/b92cff676d71bf2fe660.jpg',
                width: screenWidth,
                fit: BoxFit.fill,
              ),
              Text(
                'CHÀO MỪNG ĐẾN VỚI THẾ GIỚI \n THỂ THAO ĐIỆN TỬ',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.045,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
        const Banner1st(
          text: 'GIỚI THIỆU \n NGÀNH E-SPORT',
          color: Color(0xffD120B5),
        ),
        Container(
          height: screenHeight * 0.03,
          decoration: const BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(20),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight * 0.9,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: screenWidth * 0.5,
                child: Padding(
                  padding: EdgeInsets.all(screenWidth * 0.01),
                  child: Text(
                    'Chương trình cấp bằng quản lý thể thao điện tử quốc tế mang đến cho sinh viên cơ hội biến niềm đam mê chơi trò chơi điện tử thành một nghề nghiệp khả thi trong ngành thể thao điện tử, ngành đã phát triển vượt bậc trong thập kỷ qua. Khi ngành tiếp tục phát triển và phát triển với tốc độ ngày càng cao, triển vọng nghề nghiệp và nhu cầu về các chuyên gia đầu ngành cũng ngày càng tăng. Để đáp ứng nhu cầu về các nhà lãnh đạo cấp cao trong ngành thể thao điện tử, chương trình quản lý thể thao điện tử quốc tế được thiết kế độc đáo để đào tạo và giáo dục sinh viên về lịch sử, sử phát triển, khái niệm, văn hóa và quản lý của các đội thể thao điện tử và các tổ chức liên quan. Sinh viên tốt nghiệp được chuẩn bị sẵn sàng để tham gia vào ngành công nghiệp đang phát triển nhanh chóng này và có thể chọn lọc lên cao hơn hoặc nắm bắt nhiều cơ hội nghề nghiệp sau khi hoàn thành chương trình.',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: screenWidth * 0.018,
                        wordSpacing: screenWidth * 0.003),
                    textAlign: TextAlign.justify,
                  ),
                ),
              ),
              Image.network(
                'https://f9-zpcloud.zdn.vn/2987582755013582861/848dde906e86bcd8e597.jpg',
                height: screenHeight * 0.75,
                width: screenWidth * 0.5,
                fit: BoxFit.fill,
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.03,
          decoration: const BoxDecoration(
            color: Color(0xffD120B5),
            borderRadius: BorderRadius.only(
              topRight: Radius.circular(20),
            ),
          ),
        ),
        SizedBox(
          height: screenHeight,
          child: Stack(
            children: [
              Image.network(
                'https://b-f9-zpcloud.zdn.vn/7135667008988141506/aad52bfaccec1eb247fd.jpg',
                width: screenWidth,
                fit: BoxFit.fill,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: screenWidth * 0.03,
                    vertical: screenHeight * 0.1),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: screenWidth * 0.55,
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WhiteDotText(
                            text:
                                'Chuyên sâu trong học tập, nhưng linh hoạt trong lịch trình.',
                            space: 0.5,
                          ),
                          WhiteDotText(
                              text: 'Định hướng kinh doanh và quản lý.',
                              space: 0.5),
                          WhiteDotText(
                              text:
                                  'Học tập và định hướng nghề nghiệp, sinh viên tốt nghiệp có thể theo đuổi giáo dục cao hơn hoặc tìm kiếm sự nghiệp trong ngành công nghiệp không ngừng phát triển.',
                              space: 0.5),
                          WhiteDotText(
                              text:
                                  'Một chương trình độc đáo với việc tổ chức và quản lý dự án thi đấu thể thao điện tử ngoài đời thực.',
                              space: 0.5),
                          WhiteDotText(
                              text: 'Cơ sở đào tạo và mô phỏng hiện đại.',
                              space: 0.5),
                          WhiteDotText(
                              text: 'Nhiều lựa chọn về triển vọng nghề nghiệp.',
                              space: 0.5),
                          WhiteDotText(
                              text:
                                  'Các buổi thảo luận và giảng dạy theo nhóm.',
                              space: 0.5),
                        ],
                      ),
                    ),
                    Image.network(
                        'https://f10-zpcloud.zdn.vn/6329844685445137130/42b7b14dae5c7c02254d.jpg')
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
          color: const Color(0xffD120B5),
          child: Text(
            'Tổng quan chương trình',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: screenHeight,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  Container(
                    width: screenWidth * 0.4,
                    height: screenHeight * 0.7,
                    color: const Color(0xff262525),
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WhiteDotText(
                              text: 'Chứng chỉ được cung cấp: Diploma.',
                              space: 0.3),
                          WhiteDotText(
                              text:
                                  'Độ dài của chương trình: 60-120 tuần Toàn thời gian/Bán thời gian.',
                              space: 0.3),
                          WhiteDotText(text: 'Số khóa học: 20.', space: 0.3),
                          WhiteDotText(text: 'Số tín chỉ: 60.', space: 0.3),
                          WhiteDotText(
                              text: 'Tổng số giờ liên hệ: 1.200.', space: 0.3),
                          WhiteDotText(
                              text: 'Thời khóa biểu học kỳ.', space: 0.3),
                          WhiteDotText(
                              text: 'Mùa thu (tháng 9 - tháng 12).',
                              space: 0.3),
                          WhiteDotText(
                              text: 'Mùa đông (tháng 1 - tháng 4).',
                              space: 0.3),
                          WhiteDotText(
                              text: 'Mùa hè (tháng 5 - tháng 8).', space: 0.3),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.center,
                    height: screenHeight * 0.3,
                    width: screenWidth * 0.4,
                    color: const Color(0xffD120B5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Image.network(
                          'https://b-f10-zpcloud.zdn.vn/5939136782770804963/40b92300ac117e4f2700.jpg',
                          width: screenWidth * 0.2,
                        ),
                        Image.network(
                          'https://f9-zpcloud.zdn.vn/7389250081905753821/fb553b245a9789c9d086.jpg',
                          width: screenWidth * 0.1,
                        )
                      ],
                    ),
                  )
                ],
              ),
              Image.network(
                'https://f10-zpcloud.zdn.vn/9138606840616497828/7bab40c9c9d81b8642c9.jpg',
                width: screenWidth * 0.6,
                fit: BoxFit.fill,
              )
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.15,
          width: screenWidth,
          alignment: Alignment.center,
          color: const Color(0xffD120B5),
          child: Text(
            'Cơ hội nghề nghiệp của ngành E-Sport',
            style: TextStyle(
              color: Colors.white,
              fontSize: screenWidth * 0.035,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        SizedBox(
          height: screenHeight,
          child: Stack(
            children: [
              Image.network(
                'https://b-f10-zpcloud.zdn.vn/318992218030224516/074b84cd18dcca8293cd.jpg',
                width: screenWidth,
                fit: BoxFit.fill,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: screenWidth * 0.8,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: screenWidth * 0.03),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          WhiteDotText(
                            text:
                                'Chương trình chuyên nghiệp: Trở thành một vận động viên chuyên nghiệp, thi đấu trong các giải đấu và giành chiến thắng.',
                            space: 0.7,
                          ),
                          WhiteDotText(
                            text:
                                'Quản lý đội tuyển Esports: Điều hành và huấn luyện đội tuyển Esports, quản lý các hoạt động của đội và đảm bảo sự phát triển và thành công của các thành viên.',
                            space: 0.7,
                          ),
                          WhiteDotText(
                            text:
                                'Truyền thông và sản xuất truyền hình: Bao gồm việc sản xuất và phát sóng trực tiếp các trận đấu và sự kiện Esports, quay phim, chỉnh sửa video và quảng cáo.',
                            space: 0.7,
                          ),
                          WhiteDotText(
                            text:
                                'Quản lý sự kiện Esports: Tổ chức, quản lý và điều phối các sự kiện Esports như giải đấu, hội thảo, triển lãm và buổi gặp gỡ cộng đồng.',
                            space: 0.7,
                          ),
                          WhiteDotText(
                            text:
                                'Tiếp thị và quảng cáo Esports: Xây dựng chiến lược tiếp thị và quảng cáo, quản lý thương hiệu và tạo dựng mối quan hệ với khách hàng trong ngành Esports.',
                            space: 0.7,
                          ),
                          WhiteDotText(
                            text:
                                'Phân tích và số liệu Esports: Phân tích dữ liệu và số liệu thống kê trong các trận đấu Esports, đánh giá hiệu suất và phân tích chiến thuật.',
                            space: 0.7,
                          ),
                          WhiteDotText(
                            text:
                                'Giám đốc dự án Esports: Quản lý và điều hành các dự án liên quan đến Esports, bao gồm quản lý ngân sách, thời gian và nhân sự.',
                            space: 0.7,
                          ),
                          WhiteDotText(
                            text:
                                'Giáo dục và huấn luyện Esports: Trở thành huấn luyện viên, giáo viên hoặc nhà phát triển chương trình đào tạo Esports để đào tạo và hướng dẫn người chơi trẻ.',
                            space: 0.7,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Image.network(
                      'https://f10-zpcloud.zdn.vn/8888414394187006324/e9462cc8b5d967873ec8.jpg'),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: screenHeight * 0.08,
          color: const Color(0xffD120B5),
        ),
        const Blogs(),
      ],
    );
  }
}
