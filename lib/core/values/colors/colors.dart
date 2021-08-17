import 'package:flutter/material.dart';

class ColorConstants {
  static const kPrimaryColor = Color(0xFF00BFA5);
  static const kPrimaryLightColor = Color(0xFFECEFF1);

  static const int _greenAccentPrimaryValue = 0xFF69F0AE;
  static const Color greenAccent100 = Color(0xFFB9F6CA);
  static const Color greenAccent400 = Color(0xFF00E676);
  static const Color greenAccent500 = Color(_greenAccentPrimaryValue);
  static const Color greenAccent700 = Color(0xFF00C853);
  static const MaterialColor jetGreenAccent =
      const MaterialColor(_greenAccentPrimaryValue, const <int, Color>{
    100: greenAccent100,
    400: greenAccent400,
    500: greenAccent500,
    700: greenAccent700,
  });
  static const Color red50 = Color(0xFFFFEBEE);
  static const Color red100 = Color(0xFFFFCDD2);
  static const Color red200 = Color(0xFFEF9A9A);
  static const Color red300 = Color(0xFFE57373);
  static const Color red400 = Color(0xFFEF5350);
  static const Color red500 = Color(_redPrimaryValue);
  static const Color red600 = Color(0xFFE53935);
  static const Color red700 = Color(0xFFD32F2F);
  static const Color red800 = Color(0xFFC62828);
  static const Color red900 = Color(0xFFB71C1C);
  static const int _redPrimaryValue = 0xFFF44336;
  static const MaterialColor jetRed = MaterialColor(
    _redPrimaryValue,
    <int, Color>{
      50: red50,
      100: red100,
      200: red200,
      300: red300,
      400: red400,
      500: red500,
      600: red600,
      700: red700,
      800: red800,
      900: red900,
    },
  );
}
