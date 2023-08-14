import 'package:flutter/material.dart';

class SearchTF extends StatelessWidget {
  final TextEditingController controller;
  final void Function()? onSearched;
  const SearchTF(
      {super.key, required this.controller, required this.onSearched});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.3,
      height: screenHeight * 0.07,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.015),
            child: Container(
              alignment: Alignment.center,
              width: screenWidth * 0.15,
              height: screenHeight * 0.06,
              child: TextField(
                controller: controller,
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(fontSize: screenWidth * 0.013),
                  border: InputBorder.none,
                ),
                style: TextStyle(fontSize: screenWidth * 0.013),
              ),
            ),
          ),
          TextButton(
            onPressed: onSearched,
            child: Container(
              width: screenWidth * 0.1,
              height: screenHeight * 0.05,
              decoration: BoxDecoration(
                color: const Color(0xff7D1F1F),
                borderRadius: BorderRadius.circular(100),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Discovery',
                    style: TextStyle(
                        color: Colors.white, fontSize: screenWidth * 0.01),
                  ),
                  Container(
                    alignment: Alignment.center,
                    width: screenWidth * 0.018,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                      size: screenWidth * 0.015,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class NavBarBT extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  const NavBarBT({super.key, required this.text, required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return TextButton(
      onPressed: onPressed,
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: screenWidth * 0.012,
        ),
      ),
    );
  }
}

class MainBanner extends StatelessWidget {
  final String logoURL;
  final String title;
  final Color color;
  const MainBanner(
      {super.key,
      required this.logoURL,
      required this.title,
      required this.color});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
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
          color: Colors.white.withOpacity(0.4),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.network(
                logoURL,
                width: screenWidth * 0.1,
              ),
              Text(
                textAlign: TextAlign.center,
                'Welcome to \n $title',
                style: TextStyle(
                  color: color,
                  fontSize: screenWidth * 0.035,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}

class Banner1st extends StatelessWidget {
  final String text;
  final Color color;
  const Banner1st({super.key, required this.text, required this.color});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.2,
      child: Stack(
        children: [
          Image.network(
            'https://b-f10-zpcloud.zdn.vn/4404463414129866200/599ea22b4d5a9e04c74b.jpg',
            fit: BoxFit.fill,
            width: screenWidth,
          ),
          Container(
            width: screenWidth,
            color: color.withOpacity(0.9),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Lịch sử của \n $text',
                  style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 40),
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class Content1st extends StatelessWidget {
  final String leftImageURL;
  final String bgImageURL;
  final Widget child;
  const Content1st(
      {super.key,
      required this.leftImageURL,
      required this.bgImageURL,
      required this.child});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.8,
      child: Row(
        children: [
          Image.network(
            leftImageURL,
            width: screenWidth * 0.3,
            fit: BoxFit.fill,
          ),
          SizedBox(
            width: screenWidth * 0.7,
            child: Column(
              children: [
                Container(
                  height: screenHeight * 0.025,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(20),
                    ),
                  ),
                ),
                SizedBox(
                  height: screenHeight * 0.75,
                  child: Stack(
                    children: [
                      Image.network(
                        bgImageURL,
                        height: screenHeight * 0.75,
                        fit: BoxFit.fill,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: screenWidth * 0.025),
                          child: SizedBox(
                              height: screenHeight * 0.5, child: child)),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Padding(
                          padding: EdgeInsets.only(right: screenWidth * 0.1),
                          child: Image.network(
                            'https://f10-zpcloud.zdn.vn/1378720492417214213/09175b6653e880b6d9f9.jpg',
                            width: screenWidth * 0.13,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  height: screenHeight * 0.025,
                  decoration: const BoxDecoration(
                    color: Colors.amber,
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(20),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class TaggetTextUser extends StatelessWidget {
  final String text;
  const TaggetTextUser({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://f10-zpcloud.zdn.vn/6551643814542194901/878f3c947083a3ddfa92.jpg',
          width: screenWidth * 0.015,
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.01),
          child: SizedBox(
            width: screenWidth * 0.5,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.black,
                fontSize: screenWidth * 0.015,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ],
    );
  }
}

class TaggetTextMP extends StatelessWidget {
  final String text;
  const TaggetTextMP({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image.network(
          'https://f10-zpcloud.zdn.vn/6551643814542194901/878f3c947083a3ddfa92.jpg',
          width: screenWidth * 0.02,
        ),
        Padding(
          padding: EdgeInsets.only(left: screenWidth * 0.01),
          child: SizedBox(
            width: screenWidth * 0.85,
            child: Text(
              text,
              style: TextStyle(
                color: const Color(0xff14483E),
                fontSize: screenWidth * 0.015,
                decoration: TextDecoration.none,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
        ),
      ],
    );
  }
}

class Branches extends StatelessWidget {
  final String title;
  final String desc;
  final String imgURL;
  final int rate;
  final bool status;
  const Branches(
      {super.key,
      required this.title,
      required this.desc,
      required this.imgURL,
      required this.rate,
      required this.status});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: screenHeight * 0.2,
          ),
          child: Container(
            width: screenWidth * 0.2,
            height: screenHeight * 0.26,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Padding(
              padding: EdgeInsets.only(
                top: screenHeight * 0.1,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.network(
                        'https://f9-zpcloud.zdn.vn/2679624384211281412/f6eaedb498cf4b9112de.jpg',
                        width: screenWidth * 0.015,
                      ),
                      Text(
                        title,
                        style: const TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      ),
                      Image.network(
                        'https://f9-zpcloud.zdn.vn/2679624384211281412/f6eaedb498cf4b9112de.jpg',
                        width: screenWidth * 0.015,
                      ),
                    ],
                  ),
                  Text(
                    desc,
                    textAlign: TextAlign.center,
                  ),
                  Visibility(
                    visible: rate != 0,
                    child: Container(
                      alignment: Alignment.center,
                      width: screenWidth * 0.065,
                      height: screenHeight * 0.05,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: rate,
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.all(2),
                            child: Image.network(
                              'https://f9-zpcloud.zdn.vn/4408025323903651587/4f263f0d4e769d28c467.jpg',
                              width: screenWidth * 0.01,
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                  status
                      ? const Icon(Icons.check)
                      : const Icon(Icons.build_circle)
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: screenWidth * 0.025,
          ),
          child: Image.network(
            imgURL,
            width: screenWidth * 0.15,
          ),
        ),
      ],
    );
  }
}

class HomeStay extends StatelessWidget {
  final String imgURL;
  final String title;
  final String desc;
  final Color? btColor;
  final void Function()? onPressed;

  const HomeStay(
      {super.key,
      required this.imgURL,
      required this.title,
      required this.desc,
      required this.btColor,
      required this.onPressed});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      alignment: Alignment.center,
      children: [
        Container(
          width: screenWidth * 0.2,
          height: screenHeight * 0.6,
          decoration: BoxDecoration(
            border: Border.all(
                color: Colors.black, width: 1, style: BorderStyle.solid),
            color: Colors.white,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.network(imgURL),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 30,
                  vertical: 10,
                ),
                child: Text(
                  title,
                  style: const TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Text(
                  textAlign: TextAlign.justify,
                  desc,
                  style: const TextStyle(color: Colors.grey, fontSize: 14),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: screenHeight * 0.6),
          child: TextButton(
            onPressed: onPressed,
            child: Container(
              width: screenWidth * 0.08,
              height: screenHeight * 0.06,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: btColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const Text(
                    'Apply Now',
                    style: TextStyle(color: Colors.white),
                  ),
                  Container(
                    width: screenWidth * 0.02,
                    height: screenHeight * 0.04,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                    ),
                    child: Icon(
                      Icons.keyboard_arrow_right_outlined,
                      color: btColor,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class HomeStayContainer extends StatelessWidget {
  const HomeStayContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 0.9,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            'https://b-f9-zpcloud.zdn.vn/6737874530391155538/5c785906070bd4558d1a.jpg',
            height: screenHeight * 0.7,
            fit: BoxFit.fill,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              HomeStay(
                imgURL:
                    'https://f9-zpcloud.zdn.vn/9150845615709839578/8aff181ff312204c7903.jpg',
                title: 'Chỗ ở gia đình trọ',
                desc:
                    'Một trong số các loại chỗ ở là lựa chọn Homestay, mà học sinh/phụ huynh có thể đăng ký trước khi đến Vancouver. Việc đăng ký Homestay có thể được thực hiện thông qua Facebook, Airbnb và trang web Homestay. Một số công ty cung cấp dịch vụ này bao gồm Homadorma, VanMates Cypress và HomeSweetHomeStay.',
                btColor: Colors.green[400],
                onPressed: () {},
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    textAlign: TextAlign.center,
                    'Quy trình kết nối \n Homestay',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth * 0.035,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  HomeStay(
                    imgURL:
                        'https://f10-zpcloud.zdn.vn/3404897037723885981/33d0a9f3f4fe27a07eef.jpg',
                    title: 'Chia sẽ chỗ ở',
                    desc:
                        'Tùy chọn này cho phép học sinh thuê một phòng trong ngôi nhà và chung sống với các học sinh khác trong cùng một ngôi nhà. Đây cũng có thể là một căn hộ chung. Đối với chỗ ở chung, gia đình/học sinh có thể tìm kiếm các lựa chọn của họ trên các trang web sau: Airbnb, Padmapper, HiHostels, AptLiving, WYCA Hotel, RentSeeker. Chi phí cho chỗ ở chung dao động từ 800 đến 1100 đô la Canada mỗi tháng.',
                    btColor: Colors.red[400],
                    onPressed: () {},
                  ),
                ],
              ),
              HomeStay(
                imgURL:
                    'https://f10-zpcloud.zdn.vn/7614598139115120768/6e32a073fd7e2e20776f.jpg',
                title: 'Thuê căn hộ hoặc chung cư',
                desc:
                    'Thuê một căn hộ gồm 1 phòng ngủ có giá thuê dao động từ 1550 đến 2000 đô la Canada mỗi tháng tùy thuộc vào khu vực và vị trí. Học sinh cũng có thể chia sẽ một căn hộ (ví dụ như căn hộ hai phòng ngủ) với một học sinh khác, chia sẽ chi phí thuê và tiện ích.',
                btColor: Colors.amber[400],
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class UserBlog extends StatelessWidget {
  final String username;
  final String avatarURL;
  final String content;
  final void Function()? likeOnPressed;
  final void Function()? shareOnPressed;
  const UserBlog(
      {super.key,
      required this.avatarURL,
      required this.username,
      required this.content,
      required this.likeOnPressed,
      required this.shareOnPressed});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.2,
      height: screenHeight * 0.48,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.network(
              avatarURL,
              width: screenWidth * 0.08,
            ),
            Text(
              username,
              style: TextStyle(
                color: Colors.black,
                fontWeight: FontWeight.bold,
                fontSize: screenWidth * 0.01,
              ),
            ),
            SizedBox(
              height: screenHeight * 0.13,
              width: screenWidth * 0.15,
              child: Text(
                content,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: screenWidth * 0.01,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: screenHeight * 0.04,
                  width: screenWidth * 0.02,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    onPressed: likeOnPressed,
                    icon: Icon(
                      Icons.favorite_border,
                      color: Colors.white,
                      size: screenHeight * 0.02,
                    ),
                  ),
                ),
                SizedBox(width: screenWidth * 0.01),
                Container(
                  height: screenHeight * 0.04,
                  width: screenWidth * 0.02,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: const Color(0xff171717),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: IconButton(
                    onPressed: shareOnPressed,
                    icon: Icon(
                      Icons.share,
                      color: Colors.white,
                      size: screenHeight * 0.02,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class Blogs extends StatelessWidget {
  const Blogs({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      height: screenHeight * 1.1,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Image.network(
            'https://b-f10-zpcloud.zdn.vn/8974588545926870050/fa4705b5c7ba14e44dab.jpg',
            width: screenWidth,
            fit: BoxFit.fill,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.network(
                    'https://f9-zpcloud.zdn.vn/1113660173887717630/c8cd1c8bd58406da5f95.jpg',
                    width: screenWidth * 0.05,
                  ),
                  Text(
                    'BLOGS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.03,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  UserBlog(
                    avatarURL:
                        'https://f10-zpcloud.zdn.vn/4233331328488336089/95ada58c7183a2ddfb92.jpg',
                    username: 'Olivia',
                    content:
                        'Tôi nhận được kiến thức sâu rộng về khách sạn, điều này cho phép tôi đảm nhận một cách chuyên nghiệp về công việc chuyên ngành quản lý khách sạn.',
                    likeOnPressed: () {},
                    shareOnPressed: () {},
                  ),
                  UserBlog(
                    avatarURL:
                        'https://f9-zpcloud.zdn.vn/3663882831209888029/b587772b9024437a1a35.jpg',
                    username: 'Noah',
                    content:
                        'Cornerstone là một nơi tuyệt vời để cho tôi có thể học hỏi. Thời gian ở đây giúp tôi có được sự tự tin và áp dụng tất cả những gì đã học trên lớp vào thực tiễn.',
                    likeOnPressed: () {},
                    shareOnPressed: () {},
                  ),
                  UserBlog(
                    avatarURL:
                        'https://f10-zpcloud.zdn.vn/3341541397383773909/0759daf53dfaeea4b7eb.jpg',
                    username: 'Jaskson',
                    content:
                        'Thật vui khi được trải qua nhiều điều thú vị ở đây.',
                    likeOnPressed: () {},
                    shareOnPressed: () {},
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  UserBlog(
                    avatarURL:
                        'https://f10-zpcloud.zdn.vn/5878374981543956786/0dadd301340ee750be1f.jpg',
                    username: 'Emma',
                    content:
                        'Ở đây tôi đã gặp được rất nhiều bạn mới và tiếp thu được rất nhiều kiến thức bổ ích.',
                    likeOnPressed: () {},
                    shareOnPressed: () {},
                  ),
                  UserBlog(
                    avatarURL:
                        'https://f9-zpcloud.zdn.vn/8391772870034708796/577825c9c2c6119848d7.jpg',
                    username: 'Kian',
                    content:
                        'Tôi đã có công việc tốt với một mức thu nhập hậu hĩnh sau khi học ở đây.',
                    likeOnPressed: () {},
                    shareOnPressed: () {},
                  ),
                  UserBlog(
                    avatarURL:
                        'https://f9-zpcloud.zdn.vn/8128509636150838519/20f36f42884d5b13025c.jpg',
                    username: 'Ava',
                    content: 'Thật vui khi được học ở đây.',
                    likeOnPressed: () {},
                    shareOnPressed: () {},
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class Esport extends StatelessWidget {
  const Esport({super.key});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Stack(
      children: [
        Image.network(
            'https://b-f10-zpcloud.zdn.vn/661300129275303253/d20a2042e40636586f17.jpg'),
        Positioned(
          bottom: screenHeight * 0.3,
          right: screenWidth * 0.15,
          child: Container(
            width: screenWidth * 0.1,
            height: screenHeight * 0.08,
            decoration: BoxDecoration(
              color: Colors.red[700],
              borderRadius: BorderRadius.circular(10),
            ),
            child: TextButton(
              onPressed: () {},
              child: Text(
                'Apply Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: screenWidth * 0.013,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
