import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueGray4006c = fromHex('#6c858a9e');

  static Color blueGray100 = fromHex('#d0dae9');

  static Color black900 = fromHex('#000000');

  static Color blueGray400 = fromHex('#888888');

  static Color red600 = fromHex('#d93a49');

  static Color blueGray800 = fromHex('#2d3d5c');

  static Color red300 = fromHex('#df7f89');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
