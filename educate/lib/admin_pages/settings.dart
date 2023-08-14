import 'package:educate/widgets/admin_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CaiDat extends StatefulWidget {
  const CaiDat({super.key});

  @override
  State<CaiDat> createState() => _CaiDatState();
}

class _CaiDatState extends State<CaiDat> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(top: screenHeight * 0.03),
      child: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.02),
              child: Text(
                'CÀI ĐẶT',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: screenWidth * 0.018,
                ),
              ),
            ),
          ),
          const CaiDatBT(
              leadingIcon: FontAwesomeIcons.bell, title: 'Notifications'),
          const CaiDatBT(
              leadingIcon: FontAwesomeIcons.key, title: 'Change Password'),
          const CaiDatBT(
              leadingIcon: FontAwesomeIcons.shield, title: 'Security'),
          const CaiDatBT(leadingIcon: FontAwesomeIcons.users, title: 'Friends'),
          const CaiDatBT(
              leadingIcon: FontAwesomeIcons.addressCard,
              title: 'Enable 2-steps Verification'),
          const CaiDatBT(
              leadingIcon: FontAwesomeIcons.earthAmericas,
              title: 'Display & Languages'),
          const CaiDatBT(
              leadingIcon: FontAwesomeIcons.magnifyingGlass, title: 'Help'),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(right: screenWidth * 0.13),
              child: SizedBox(
                width: screenWidth * 0.08,
                child: TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        FontAwesomeIcons.powerOff,
                        color: Colors.black,
                        size: screenWidth * 0.018,
                      ),
                      Text(
                        'Logout',
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: screenWidth * 0.013,
                        ),
                      )
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
