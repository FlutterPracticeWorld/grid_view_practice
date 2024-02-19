import 'package:flutter/material.dart';

class Class1112 extends StatelessWidget {
  const Class1112({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Theme
              .of(context)
              .colorScheme.inversePrimary,
          title: Text('안녕하세요'),
        ),
        body: Text(
          '안녕하세요'
        )
    )

    )}
}
