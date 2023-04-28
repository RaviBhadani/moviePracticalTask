import 'package:flutter/material.dart';

class ColorConstant {
  static Color primaryWhite = Color(0xFFffffff);
  static Color primaryBlack = Color(0xFF070707);
  static Color primaryBlue = Color(0xFF092A74);
  static Color bgPrimary = Color(0xFFC6D5DD);


  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
