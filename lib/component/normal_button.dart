import 'package:flutter/material.dart';

class NormalButton extends StatelessWidget {
  const NormalButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shape: RoundedRectangleBorder(
          // borderRadius: BorderRadius.circular(8)
          borderRadius: const BorderRadius.all(
            Radius.circular(8),
          ),
        ),
      ),
      child: AspectRatio(
        aspectRatio: 343 / 48,
        child: Center(
          child: Text(
            "확인",
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
