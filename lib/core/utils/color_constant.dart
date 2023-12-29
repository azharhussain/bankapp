import 'dart:ui';
import 'package:flutter/material.dart';

class ColorConstant {
  static Color blueA70026 = fromHex('#26005cff');

  static Color pink40026 = fromHex('#26e84c88');

  static Color lightBlue50026 = fromHex('#2600aff0');

  static Color indigoA100 = fromHex('#8982ff');

  static Color blueA70066 = fromHex('#660062f5');

  static Color lightBlue80026 = fromHex('#260274b3');

  static Color deepPurple300 = fromHex('#8871e4');

  static Color gray50 = fromHex('#f9f9f9');

  static Color teal300 = fromHex('#5bcaa1');

  static Color black900 = fromHex('#000000');

  static Color indigo5001 = fromHex('#e4e2ff');

  static Color indigo5002 = fromHex('#e4e3ff');

  static Color greenA70026 = fromHex('#261dd75f');

  static Color gray500 = fromHex('#aaaaaa');

  static Color blueGray100 = fromHex('#cccccc');

  static Color blueGray400 = fromHex('#888888');

  static Color indigo50 = fromHex('#ebeafd');

  static Color black9000f = fromHex('#0f000000');

  static Color black9000c = fromHex('#0c000000');

  static Color gray200 = fromHex('#eeeeee');

  static Color teal80026 = fromHex('#26007348');

  static Color gray300 = fromHex('#dddddd');

  static Color amber60026 = fromHex('#26ffb700');

  static Color gray100 = fromHex('#f3f3f3');

  static Color blue7005b = fromHex('#5b2472d5');

  static Color deepPurple50 = fromHex('#edecff');

  static Color indigo100 = fromHex('#ccd6eb');

  static Color black90011 = fromHex('#11000000');

  static Color gray40026 = fromHex('#26bbbbbb');

  static Color redA70026 = fromHex('#26e50812');

  static Color blueA7004c = fromHex('#4c0062f5');

  static Color black90014 = fromHex('#14000000');

  static Color whiteA700 = fromHex('#ffffff');

  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}
