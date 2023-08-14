import 'package:educate/widgets/admin_widget.dart';
import 'package:flutter/material.dart';

class RegistAd extends StatefulWidget {
  const RegistAd({super.key});

  @override
  State<RegistAd> createState() => _RegistAdState();
}

class _RegistAdState extends State<RegistAd> {
  final TextEditingController _usernameController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          'TÀI KHOẢN',
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: screenWidth * 0.02,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          'Tạo tài khoản phân quyền',
          style: TextStyle(
            color: Colors.black,
            decoration: TextDecoration.none,
            fontSize: screenWidth * 0.015,
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          width: screenWidth * 0.3,
          height: screenHeight * 0.7,
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(30),
          ),
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: screenWidth * 0.025,
              vertical: screenHeight * 0.05,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RegistTF(
                  title: 'Username',
                  controller: _usernameController,
                  isObscure: false,
                ),
                RegistTF(
                  title: 'Email Address',
                  controller: _usernameController,
                  isObscure: false,
                ),
                RegistTF(
                  title: 'Student ID',
                  controller: _usernameController,
                  isObscure: false,
                ),
                RegistTF(
                  title: 'Verify Code',
                  controller: _usernameController,
                  isObscure: false,
                ),
                RegistTF(
                  title: 'New Password',
                  controller: _usernameController,
                  isObscure: true,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: screenHeight * 0.01),
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        RegistBT(
                            text: 'HỦY',
                            onPressed: () {},
                            btnColor: Colors.red[800]),
                        RegistBT(
                            text: 'TẠO',
                            onPressed: () {},
                            btnColor: Colors.green[800]),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
