import 'package:flutter/material.dart';

class YeuCauUFV extends StatefulWidget {
  const YeuCauUFV({super.key});

  @override
  State<YeuCauUFV> createState() => _YeuCauUFVState();
}

class _YeuCauUFVState extends State<YeuCauUFV> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Image.network(
            'https://b-f10-zpcloud.zdn.vn/2137515051824210405/34c947e904ded6808fcf.jpg'),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [],
          ),
        )
      ],
    );
  }
}
