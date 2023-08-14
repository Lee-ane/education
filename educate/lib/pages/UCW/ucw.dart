import 'package:educate/widgets/user_widget.dart';
import 'package:flutter/material.dart';

class UCW extends StatefulWidget {
  const UCW({super.key});

  @override
  State<UCW> createState() => _UCWState();
}

class _UCWState extends State<UCW> {
  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        MainBanner(
          logoURL:
              'https://f10-zpcloud.zdn.vn/6958763682390654692/97bfc6d01889cad79398.jpg',
          title: 'UNIVERSITY OF CANADA WEST',
          color: Colors.white,
        )
      ],
    );
  }
}
