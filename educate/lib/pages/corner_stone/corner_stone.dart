import 'package:educate/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class CornerStone extends StatefulWidget {
  const CornerStone({super.key});

  @override
  State<CornerStone> createState() => _CornerStoneState();
}

class _CornerStoneState extends State<CornerStone> {
  final TextEditingController _searchController = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _searchController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        //Main banner
        const MainBanner(
          logoURL:
              'https://f10-zpcloud.zdn.vn/3917744482959151933/769182c44d489e16c759.jpg',
          title: 'Cornerstone International \n Comunity College',
          color: Color(0xff000349),
        ),
        //1st
        const Banner1st(
          text: 'Lịch sử của \n Cornerstone International Community College',
          color: Color(0xff27377B),
        ),
        const Content1st(
          leftImageURL:
              'https://f10-zpcloud.zdn.vn/8459477338576209370/f14372158064533a0a75.jpg',
          bgImageURL:
              'https://b-f9-zpcloud.zdn.vn/5050120378762686721/5aa006e19c6e4f30167f.jpg',
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              TaggetTextUser(
                text:
                    'Cornerstone International Community College (CICC) là một cơ sở giáo dục nổi tiếng với lịch sử đa dạng và phong phú.',
              ),
              TaggetTextUser(
                text:
                    'Cornerstone International Community College được thành lập vào năm 1980 với tầm nhìn cung cấp một nền giáo dục chất lượng và dễ tiếp cận cho sinh viên từ nhiều nền văn hoá khác nhau. Kể từ khi thành lập, CICC cam kết cung cấp các chương trình học phù hợp với ngành nghề và trang bị cho sinh viên sự thành công trong sự nghiệp.',
              ),
            ],
          ),
        ),
        //2nd
        SizedBox(
          height: screenHeight * 0.3,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                'https://b-f10-zpcloud.zdn.vn/5779276297258184291/e73163447c34af6af625.jpg',
                width: screenWidth,
                fit: BoxFit.fill,
              ),
              Container(
                width: screenWidth,
                color: const Color(0xff27377B).withOpacity(0.9),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      'Các cơ sở của Cornerstone',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Container(
                      width: screenWidth * 0.95,
                      height: screenHeight * 0.18,
                      color: Colors.white,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.network(
                                'https://f9-zpcloud.zdn.vn/1667530328689753711/90ab879822e4f1baa8f5.jpg',
                                width: screenWidth * 0.015,
                              ),
                              const Text(
                                'Cornerstone International Community College là trường cao đẳng \n tư thục lớn nhất ở Vancouver.',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 18),
                                textAlign: TextAlign.center,
                              ),
                              Image.network(
                                'https://f9-zpcloud.zdn.vn/1667530328689753711/90ab879822e4f1baa8f5.jpg',
                                width: screenWidth * 0.015,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 40),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Image.network(
                                      'https://f10-zpcloud.zdn.vn/7691910737620431276/53466e25c55916074f48.jpg',
                                      width: screenWidth * 0.02,
                                    ),
                                    const Text(
                                      'Trường có 3 cơ sở: \n West Hastins, Granville và Seymore.',
                                      style: TextStyle(fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                                Image.network(
                                  'https://f10-zpcloud.zdn.vn/553490070862747749/995635069a7a4924106b.jpg',
                                  height: screenHeight * 0.08,
                                ),
                                Column(
                                  children: [
                                    Image.network(
                                      'https://f10-zpcloud.zdn.vn/7691910737620431276/53466e25c55916074f48.jpg',
                                      width: screenWidth * 0.02,
                                    ),
                                    const Text(
                                      'Thêm 1 cơ sở đang được xây dựng tại Gastown \n cho các chương trình công nghệ.',
                                      style: TextStyle(fontSize: 14),
                                      textAlign: TextAlign.center,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        //các cơ sở
        Container(
          height: screenHeight,
          color: const Color(0xff171717),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Image.network(
                'https://b-f10-zpcloud.zdn.vn/5808844312264228615/b4152767c71b14454d0a.jpg',
                width: screenWidth,
                fit: BoxFit.fill,
              ),
              const Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Branches(
                        title: 'West Hastings',
                        desc: 'Cơ sở 1 nằm trong trung tâm của \n Vancouver',
                        imgURL:
                            'https://f10-zpcloud.zdn.vn/8731422027186161644/3e6e471dce661d384477.jpg',
                        rate: 5,
                        status: true,
                      ),
                      Branches(
                        title: 'Granville',
                        desc: 'Cơ sở 2 nằm trong trung tâm của \n Vancouver',
                        imgURL:
                            'https://f9-zpcloud.zdn.vn/8353163654165184967/562ead180363d03d8972.jpg',
                        rate: 4,
                        status: true,
                      ),
                      Branches(
                        title: 'Seymore',
                        desc: 'Cơ sở 1 nằm trong trung tâm của \n Vancouver',
                        imgURL:
                            'https://f9-zpcloud.zdn.vn/1267207661548012822/ce1134279a5c4902104d.jpg',
                        rate: 5,
                        status: true,
                      ),
                    ],
                  ),
                  Branches(
                    title: 'Gastown',
                    desc:
                        'Cơ sở 4 đang được xây dựng trong \n khu phố cổ của Vancouver',
                    imgURL:
                        'https://f10-zpcloud.zdn.vn/6235262980213368123/b00e7138df430c1d5552.jpg',
                    rate: 0,
                    status: false,
                  ),
                ],
              ),
            ],
          ),
        ),
        //3rd
        Container(color: Colors.amber, height: screenHeight * 0.025),
        Container(
            decoration: const BoxDecoration(
              color: Color(0xff27377B),
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(100),
              ),
            ),
            height: screenHeight * 0.025),
        SizedBox(
          height: screenHeight * 0.9,
          child: Row(
            children: [
              SizedBox(
                width: screenWidth * 0.6,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Image.network(
                      'https://f10-zpcloud.zdn.vn/2277583107794688809/f553e4faff742c2a7565.jpg',
                      width: screenWidth * 0.6,
                      fit: BoxFit.fill,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Text(
                                'Quy trình đặt cọc',
                                style: TextStyle(
                                    fontSize: 40,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Image.network(
                                'https://f10-zpcloud.zdn.vn/553490070862747749/995635069a7a4924106b.jpg',
                                height: screenHeight * 0.08,
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 50, top: 20),
                            child: SizedBox(
                              width: screenWidth * 0.35,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text.rich(
                                    textAlign: TextAlign.justify,
                                    TextSpan(
                                      children: [
                                        TextSpan(
                                          text:
                                              'Cornerstone cung cấp các tùy chọn ',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        const TextSpan(
                                          text: 'học vị đơn ',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                        TextSpan(
                                          text: 'và ',
                                          style: TextStyle(
                                            fontSize: 20,
                                            color: Colors.grey[600],
                                          ),
                                        ),
                                        const TextSpan(
                                          text: 'học vị kép.',
                                          style: TextStyle(
                                              fontSize: 20,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenHeight * 0.05),
                                    child: Text.rich(
                                      textAlign: TextAlign.justify,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text: 'Tùy chọn ',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                          const TextSpan(
                                            text: 'học vị kép ',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text:
                                                'là gói tốt hơn cho sinh viên vì họ có thời gian học tập và làm việc tại Canada lâu hơn (1 năm làm việc + 1 năm học), điều này cũng có thể tăng cơ hội của họ trong việc tìm được nhà tài trợ.  ',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenHeight * 0.04),
                                    child: Text.rich(
                                      textAlign: TextAlign.justify,
                                      TextSpan(
                                        children: [
                                          TextSpan(
                                            text:
                                                'Tất cả sinh viên đăng ký chương trình ',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                          const TextSpan(
                                            text: 'học vị kép ',
                                            style: TextStyle(
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold),
                                          ),
                                          TextSpan(
                                            text:
                                                'cũng sẽ nhận được gói ưu đãi độc quyền từ beeznest, bao gồm hỗ trợ kinh nghiệm làm việc, phát triển sự nghiệp, mời tham dự các sự kiện mạng lưới độc quyền và giúp tạo cơ hội việc làm.',
                                            style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.grey[600],
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        top: screenHeight * 0.06),
                                    child: Text(
                                      'Trước khi sinh viên nộp đơn xin visa, cần thanh toán 1500 để nhận thư chấp nhận.',
                                      style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.grey[600],
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: screenWidth * 0.4,
                child: Image.network(
                  'https://f10-zpcloud.zdn.vn/8579497263437139928/4249cfa1d72f04715d3e.jpg',
                  fit: BoxFit.fill,
                ),
              ),
            ],
          ),
        ),
        Container(
          color: const Color(0xff27377B),
          height: screenHeight * 0.025,
        ),
        //Quy trình kết nối homestay
        const HomeStayContainer(),
        Image.network(
          'https://f10-zpcloud.zdn.vn/6975302606638084760/94f07b885f068c58d517.jpg',
          width: screenWidth,
          height: screenHeight * 0.025,
          fit: BoxFit.fill,
        ),
        //Blogs
        const Blogs(),
      ],
    );
  }
}
