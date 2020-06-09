import 'dart:ui';

import 'package:flutter/material.dart';

class ColorConstants {
  static Color colorPrimary = fromHex("#3FC5C6");
  static Color lightPrimary = fromHex("#ADEFEF");
  static Color white = fromHex("#ffffff");
  static Color textBlack = fromHex("#242A37");
  static Color textBoldBlack = fromHex("#282F39");
  static Color textGray = fromHex("#7B7E84");
  static Color borderColor = fromHex("#F2F2F2");
  static Color placeholderColor = fromHex("#7B7E84");
  static Color bgColor = fromHex("#F2F5F7");
  static Color shadow = fromHex("#00000008");
  static Color lightblue = fromHex("#172A3A");
  static Color welcomeBGColor = fromHex("#FFE44D");
  static Color tabBGGold = fromHex("#FECE0F");

  static Color selectedSegment = fromHex("#128788");

  static Color starBorder = fromHex("#AFB2BF");
  static Color starFilledColor = fromHex("#5AC4CD");
  static Color activeSwitchColor = fromHex("#3DB24B");
  static Color disActiveSwitchColor = fromHex("#CC202C");

  static Color contactUs1 = fromHex("#BDE0C7");
  static Color contactUs2 = fromHex("#ED85AA");
  static Color contactUs3 = fromHex("#F9C362");
  static Color contactUs4 = fromHex("#EBA6FB");

  static Color darkBlue = fromHex("#172A3A");

  static Color toastColor = fromHex("#EFEFEF");

  static Color blackText = fromHex("#000000");

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

Map<int, Color> color = {
  50: Color.fromRGBO(255, 206, 15, .1),
  100: Color.fromRGBO(255, 206, 15, .2),
  200: Color.fromRGBO(255, 206, 15, .3),
  300: Color.fromRGBO(255, 206, 15, .4),
  400: Color.fromRGBO(255, 206, 15, .5),
  500: Color.fromRGBO(255, 206, 15, .6),
  600: Color.fromRGBO(255, 206, 15, .7),
  700: Color.fromRGBO(255, 206, 15, .8),
  800: Color.fromRGBO(255, 206, 15, .9),
  900: Color.fromRGBO(255, 206, 15, 1),
};

MaterialColor colorCustom = MaterialColor(0xffffce0f, color);
