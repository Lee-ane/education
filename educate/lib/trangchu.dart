import 'package:educate/dash_board.dart';
import 'package:educate/pages/login.dart';
import 'package:educate/widgets/trang_chu_widget.dart';
import 'package:flutter/material.dart';

class TrangChu extends StatefulWidget {
  const TrangChu({super.key});

  @override
  State<TrangChu> createState() => _TrangChuState();
}

class _TrangChuState extends State<TrangChu> {
  bool isVisible = false;

  void chooseUni() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: screenHeight * 0.1),
                Image.asset(
                  'assets/banner2.png',
                  width: screenWidth,
                  height: screenHeight * 0.9,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  height: screenHeight * 0.5,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 70),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Image.asset('icon.png', width: screenWidth * 0.05),
                            const Padding(
                              padding: EdgeInsets.symmetric(vertical: 30),
                              child: FooterSlogan(),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    'fb.png',
                                    width: screenWidth * 0.0245,
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 20),
                                  child: TextButton(
                                    onPressed: () {},
                                    child: Image.asset(
                                      'twt.png',
                                      width: screenWidth * 0.025,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  child: Image.asset(
                                    'linkedin.png',
                                    width: screenWidth * 0.025,
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FooterCategory(title: 'Company'),
                            FooterTB(text: 'About', function: () {}),
                            FooterTB(text: 'Temp of Use', function: () {}),
                            FooterTB(text: 'Privacy Policy', function: () {}),
                            FooterTB(text: 'How It Works', function: () {}),
                            FooterTB(text: 'Contact Us', function: () {}),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FooterCategory(title: 'Get Help'),
                            FooterTB(text: 'Support Carrer', function: () {}),
                            FooterTB(text: '24 Service', function: () {}),
                            FooterTB(text: 'Quick Chat', function: () {}),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FooterCategory(title: 'Support'),
                            FooterTB(text: 'FAQ', function: () {}),
                            FooterTB(text: 'Policy', function: () {}),
                            FooterTB(text: 'Business', function: () {}),
                          ],
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const FooterCategory(title: 'Contact'),
                            FooterTB(text: 'WhatsApp', function: () {}),
                            FooterTB(text: 'Support 24', function: () {}),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 130),
                  child: Divider(height: screenHeight * 0.25, thickness: 2),
                ),
              ],
            ),
          ),
          Container(
            height: screenHeight * 0.1,
            color: const Color(0xff7D1F1F),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset('icon.png'),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Trang chủ',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 270),
                        child: TextButton(
                          onPressed: chooseUni,
                          child: Row(
                            children: [
                              const Text(
                                'Trường học',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 18),
                              ),
                              Icon(
                                isVisible
                                    ? Icons.arrow_drop_down
                                    : Icons.arrow_left_outlined,
                                color: Colors.white,
                              )
                            ],
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const LoginScreen()));
                        },
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            const Color(0xff4A1414),
                          ),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(15),
                          child: Text(
                            'Đăng nhập',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: isVisible,
            child: Positioned(
              top: screenHeight * 0.1,
              right: screenWidth * 0.12,
              child: Container(
                width: screenWidth * 0.2,
                height: screenHeight * 0.5,
                color: Colors.white,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      //CORNERSTONE
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DashBoard(uniIndex: 0)));
                        },
                        child: Image.network(
                            'https://f10-zpcloud.zdn.vn/6460311566423268113/44e01791b49167cf3e80.jpg'),
                      ),
                      //METRO POLITAN
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DashBoard(uniIndex: 1)));
                        },
                        child: Image.network(
                            'https://f10-zpcloud.zdn.vn/384637170355439749/9c9f4479e47937276e68.jpg'),
                      ),
                      //CANADA WEST
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const DashBoard(uniIndex: 2)));
                        },
                        child: Image.network(
                            'https://f10-zpcloud.zdn.vn/6900753470238023401/9d2f6719c71914474d08.jpg'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const DashBoard()));
                        },
                        child: Image.network(
                            'https://f10-zpcloud.zdn.vn/4677184620715682476/600d394699464a181357.jpg'),
                      ),
                      TextButton(
                        onPressed: () {
                          // Navigator.push(
                          //     context,
                          //     MaterialPageRoute(
                          //         builder: (context) => const DashBoard()));
                        },
                        child: Image.network(
                            'https://f10-zpcloud.zdn.vn/8058067882350356245/8d46524af34a2014795b.jpg'),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
