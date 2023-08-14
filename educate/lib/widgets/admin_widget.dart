import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class AdminMenuBT extends StatelessWidget {
  final void Function()? onPressed;
  final IconData? icon;
  final String text;
  final bool isvisible;
  const AdminMenuBT(
      {super.key,
      required this.icon,
      required this.text,
      required this.onPressed,
      required this.isvisible});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
      child: Container(
        width: isvisible ? screenWidth * 0.15 : screenWidth * 0.075,
        height: screenHeight * 0.075,
        decoration: BoxDecoration(
          color: Colors.white.withOpacity(0.3),
          borderRadius: BorderRadius.circular(15),
        ),
        child: TextButton(
          onPressed: onPressed,
          child: isvisible
              ? Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: screenWidth * 0.01, right: screenWidth * 0.02),
                      child: Icon(icon, color: Colors.white),
                    ),
                    Text(
                      text,
                      style: TextStyle(
                          color: Colors.white, fontSize: screenWidth * 0.01),
                    )
                  ],
                )
              : TextButton(
                  onPressed: onPressed,
                  child: Icon(icon,
                      color: Colors.white, size: screenWidth * 0.02)),
        ),
      ),
    );
  }
}

class AdminBT extends StatelessWidget {
  final void Function()? onPressed;
  final String text1;
  final String text2;
  const AdminBT(
      {super.key,
      required this.onPressed,
      required this.text1,
      required this.text2});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    return Container(
      width: screenWidth * 0.2,
      height: screenHeight * 0.25,
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: const Color(0xff7D1F1F),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(
              Icons.task,
              color: Colors.white,
              size: screenWidth * 0.05,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  text1,
                  style: TextStyle(
                      color: Colors.white, fontSize: screenWidth * 0.01),
                ),
                Text(
                  text2,
                  style: TextStyle(
                      color: Colors.white, fontSize: screenWidth * 0.01),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class RegistTF extends StatelessWidget {
  final String title;
  final TextEditingController controller;
  final bool isObscure;
  const RegistTF(
      {super.key,
      required this.title,
      required this.controller,
      required this.isObscure});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.symmetric(vertical: screenHeight * 0.015),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title:',
            style: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: screenWidth * 0.01,
            ),
          ),
          SizedBox(
            height: screenHeight * 0.05,
            child: TextField(
              obscureText: isObscure,
              decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(100),
                  borderSide: const BorderSide(
                    color: Colors.black,
                    width: 1,
                    style: BorderStyle.solid,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class RegistBT extends StatelessWidget {
  final Color? btnColor;
  final String text;
  final void Function()? onPressed;
  const RegistBT(
      {super.key,
      required this.text,
      required this.onPressed,
      required this.btnColor});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Container(
      width: screenWidth * 0.1,
      height: screenHeight * 0.05,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: btnColor,
      ),
      child: TextButton(
        onPressed: onPressed,
        child: Text(
          text,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}

class HoSoText extends StatelessWidget {
  final String title;
  final String text;
  const HoSoText({super.key, required this.title, required this.text});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Text.rich(
      TextSpan(
        children: [
          TextSpan(
            text: '$title : ',
            style: TextStyle(fontSize: screenWidth * 0.01),
          ),
          TextSpan(
            text: text,
            style: TextStyle(
              fontSize: screenWidth * 0.01,
              color: Colors.black,
              fontWeight: FontWeight.bold,
              letterSpacing: screenWidth * 0.001,
            ),
          ),
        ],
      ),
    );
  }
}

class CaiDatBT extends StatelessWidget {
  final IconData? leadingIcon;
  final String title;
  const CaiDatBT({super.key, required this.leadingIcon, required this.title});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return SizedBox(
      width: screenWidth * 0.5,
      height: screenHeight * 0.1,
      child: TextButton(
        onPressed: () {},
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(
                  leadingIcon,
                  color: Colors.grey,
                  size: screenWidth * 0.015,
                ),
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.01),
                  child: Text(
                    title,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: screenWidth * 0.012,
                      letterSpacing: screenWidth * 0.001,
                    ),
                  ),
                )
              ],
            ),
            Icon(
              FontAwesomeIcons.angleRight,
              color: Colors.black,
              size: screenWidth * 0.015,
            )
          ],
        ),
      ),
    );
  }
}
