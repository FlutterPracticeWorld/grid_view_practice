import 'package:daru_flutter/util/router.dart';
import 'package:daru_flutter/util/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: myTheme,
      onGenerateRoute: AppRouter.generateRoute,
    );
  }
}