import 'package:educate/admin_pages/ho_so.dart';
import 'package:educate/admin_pages/settings.dart';
import 'package:educate/admin_pages/tao_tai_khoan.dart';
import 'package:educate/admin_pages/trang_chinh.dart';
import 'package:educate/widgets/admin_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdminScreen extends StatefulWidget {
  const AdminScreen({super.key});

  @override
  State<AdminScreen> createState() => _AdminScreenState();
}

List<Widget> _widgetOptions = <Widget>[
  const TrangChuAd(),
  const HoSo(),
  const RegistAd(),
  const CaiDat(),
];

class _AdminScreenState extends State<AdminScreen> {
  String username = 'Username';
  int _selectedIndex = 0;
  bool isvisible = true;

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        body: Center(
          child: Stack(children: [
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.01),
              child: Row(
                children: [
                  //Toolbar
                  Container(
                    width: isvisible ? screenWidth * 0.15 : screenWidth * 0.2,
                    height: screenHeight * 0.9,
                    decoration: BoxDecoration(
                      color: const Color(0xff7D1F1F),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: screenWidth * 0.02),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset(
                                'assets/icon.png',
                                width: screenWidth * 0.05,
                              ),
                              IconButton(
                                onPressed: () {
                                  setState(() {
                                    isvisible = !isvisible;
                                  });
                                },
                                icon: isvisible
                                    ? Icon(
                                        Icons.sort,
                                        color: Colors.white,
                                        size: screenWidth * 0.02,
                                      )
                                    : Icon(
                                        Icons.menu,
                                        color: Colors.white,
                                        size: screenWidth * 0.02,
                                      ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(
                              vertical: screenHeight * 0.02),
                          child: Container(
                            width: isvisible
                                ? screenWidth * 0.1
                                : screenWidth * 0.15,
                            height: screenHeight * 0.1,
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 1,
                                style: BorderStyle.solid,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: isvisible
                                ? Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Container(
                                      width: screenWidth * 0.03,
                                      decoration: const BoxDecoration(
                                          color: Colors.white,
                                          shape: BoxShape.circle),
                                    ),
                                  )
                                : Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Container(
                                        width: screenWidth * 0.03,
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            shape: BoxShape.circle),
                                      ),
                                      Text(
                                        'Chào, $username',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: screenWidth * 0.012,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ],
                                  ),
                          ),
                        ),
                        AdminMenuBT(
                          icon: Icons.house,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 0;
                            });
                          },
                          text: 'Trang chủ',
                          isvisible: !isvisible,
                        ),
                        AdminMenuBT(
                          icon: Icons.person,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 1;
                            });
                          },
                          text: 'Hồ sơ',
                          isvisible: !isvisible,
                        ),
                        AdminMenuBT(
                          icon: Icons.calendar_month,
                          onPressed: () {},
                          text: 'Lịch hoạt động',
                          isvisible: !isvisible,
                        ),
                        AdminMenuBT(
                          icon: FontAwesomeIcons.filePen,
                          onPressed: () {},
                          text: 'Cập nhật nội dung',
                          isvisible: !isvisible,
                        ),
                        AdminMenuBT(
                          icon: Icons.add_box,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 2;
                            });
                          },
                          text: 'Tài khoản',
                          isvisible: !isvisible,
                        ),
                        AdminMenuBT(
                          icon: Icons.settings,
                          onPressed: () {
                            setState(() {
                              _selectedIndex = 3;
                            });
                          },
                          text: 'Cài đặt',
                          isvisible: !isvisible,
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                        left: screenWidth * 0.02, top: screenHeight * 0.06),
                    child: SizedBox(
                      width: screenWidth * 0.75,
                      child: _widgetOptions.elementAt(_selectedIndex),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: screenHeight * 0.05,
              right: screenWidth * 0.13,
              child: IconButton(
                iconSize: screenWidth * 0.025,
                icon: Icon(
                  Icons.notifications_active_outlined,
                  color: Colors.grey[700],
                ),
                onPressed: () {},
              ),
            ),
          ]),
        ),
      ),
    );
  }
}
