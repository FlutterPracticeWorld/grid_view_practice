import 'package:daru_flutter/view/depreciated/not_found.dart';
import 'package:daru_flutter/view/depreciated/second_page.dart';
import 'package:daru_flutter/view/main_page.dart';
import 'package:daru_flutter/view/depreciated/third_page.dart';
import 'package:flutter/material.dart';

import '../view/class_1112.dart';
//Pages



class AppRouter {
  static Widget homeWidget() {
    return const MainPage();
  }
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        //return MaterialPageRoute(builder: (_) => const HomePage()); // MainPage 클래스의 생성자 호출
        return MaterialPageRoute(builder: (_) => Class1112()); // MainPage 클래스의 생성자 호출
    //   case '/first':
    //     return MaterialPageRoute(builder: (_) => const MainPage()); // MainPage 클래스의 생성자 호출
    //   case '/second':
    //     return MaterialPageRoute(builder: (_) => SecondPage());
    // // 다른 라우트 정의
      default:
        return MaterialPageRoute(builder: (_) => const NotFoundPage());
    }
  }
}
