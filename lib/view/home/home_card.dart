import 'package:flutter/material.dart';

class HomeCard extends StatelessWidget {
  final String text;
  final String content;

  const HomeCard({
    Key? key,
    required this.text,
    required this.content,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(border: Border.all()),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text),
          Text(content),
        ],
      ),
    );
  }
}
