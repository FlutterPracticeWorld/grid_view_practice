import 'package:/daru_flutter/util/color_palette.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

final ThemeData myTheme = ThemeData(
  primarySwatch: Colors.blue,
  colorScheme: ColorScheme.fromSwatch(
    primarySwatch: Colors.blue, // 주요 색상
    brightness: Brightness.dark, // 밝기 설정
  ),
  fontFamily: 'Roboto',
  textTheme: TextTheme(
    headlineMedium: GoogleFonts.oswald( // 헤드라인 텍스트 스타일
      fontSize: 30,
      fontStyle: FontStyle.italic,
    ),
    bodyMedium: GoogleFonts.merriweather(), // 본문 텍스트 스타일
  ),
  appBarTheme: AppBarTheme(
    backgroundColor: Colors.black,
    elevation: 0.0,
  ),
);
