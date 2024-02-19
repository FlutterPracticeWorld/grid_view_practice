import 'package:flutter/material.dart';

class NormalInkWell extends StatelessWidget {
  final String text;
  final Color backgroundColor;
  final VoidCallback onTap;

  const NormalInkWell({
    Key? key,
    required this.text,
    required this.backgroundColor,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: AspectRatio(
        aspectRatio: 343 / 48,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: backgroundColor,
          ),
          alignment: Alignment.center,
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
      ),
    );
  }
}
