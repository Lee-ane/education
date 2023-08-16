import 'package:educate/pages/UCW/nganh_hoc_ucw.dart';
import 'package:educate/pages/UCW/ucw.dart';
import 'package:educate/pages/corner_stone/corner_stone.dart';
import 'package:educate/pages/corner_stone/nganh_hoc_corner_stone.dart';
import 'package:educate/pages/metro_politan/doi_tac_mp.dart';
import 'package:educate/pages/metro_politan/metro_politan.dart';
import 'package:educate/pages/metro_politan/nganh_hoc_metro_politan.dart';
import 'package:educate/pages/metro_politan/yeu_cau_metro_politan.dart';
import 'package:educate/trangchu.dart';
import 'package:educate/widgets/trang_chu_widget.dart';
import 'package:educate/widgets/user_widget.dart';
import 'package:educate/pages/corner_stone/yeu_cau_corner_stone.dart';
import 'package:flutter/material.dart';

import 'pages/corner_stone/doi_tac_corner_stone.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({
    super.key,
    /*required this.uniIndex*/
  });

  @override
  State<DashBoard> createState() => _DashBoardState();
}

List<List<Widget>> pages = [cornerStone, metroPolitan, uCW];

List<Widget> cornerStone = <Widget>[
  const CornerStone(),
  const YeuCauCornerStone(),
  const DoiTacCornerStone(),
  const NganhHocCornerStone(),
];

List<Widget> metroPolitan = <Widget>[
  const MetroPolitan(),
  const YeuCauMetroPolitan(),
  const DoiTacMP(),
  const NganhHocMetroPolitan(),
];

List<Widget> uCW = <Widget>[
  const NganhHocUCW(),
  const UCW(),
  const DoiTacMP(),
];

class _DashBoardState extends State<DashBoard> {
  final TextEditingController _searchController = TextEditingController();
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            SingleChildScrollView(
              child: (Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: screenHeight * 0.1),
                    child: pages[2].elementAt(_selectedIndex),
                  ),
                  //Footer
                  SizedBox(
                    height: screenHeight * 0.5,
                    child: Padding(
                      padding: EdgeInsets.only(top: screenHeight * 0.07),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Image.asset('icon.png',
                                  width: screenWidth * 0.05),
                              Padding(
                                padding: EdgeInsets.symmetric(
                                    vertical: screenHeight * 0.03),
                                child: const FooterSlogan(),
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
                                    padding: EdgeInsets.symmetric(
                                        horizontal: screenWidth * 0.01),
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
                    padding: EdgeInsets.only(
                      left: screenWidth * 0.1,
                      right: screenWidth * 0.1,
                      bottom: screenHeight * 0.1,
                    ),
                    child: Divider(thickness: screenHeight * 0.003),
                  ),
                ],
              )),
            ),
            //Navbar
            Container(
              height: screenHeight * 0.1,
              width: screenWidth,
              color: const Color(0xff7D1F1F),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: screenWidth * 0.05),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const TrangChu()));
                        },
                        child: Image.asset('icon.png')),
                    SizedBox(
                      width: screenWidth * 0.7,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          NavBarBT(
                              text: 'Home',
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 0;
                                });
                              }),
                          NavBarBT(
                              text: 'Yêu cầu',
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 1;
                                });
                              }),
                          NavBarBT(
                              text: 'Đối tác',
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 2;
                                });
                              }),
                          NavBarBT(
                              text: 'Ngành học',
                              onPressed: () {
                                setState(() {
                                  _selectedIndex = 3;
                                });
                              }),
                          SearchTF(
                            controller: _searchController,
                            onSearched: () {},
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
