import 'package:flutter/material.dart';

class DooText {
  static title(
          {String family = 'Namaku',
          double size = 50,
          Color? color = Colors.brown}) =>
      TextStyle(fontFamily: family, fontSize: size, color: color);

  static content({String family = 'Comic', double size = 18}) =>
      TextStyle(fontFamily: family, fontSize: size);

  static all(
          {String text = 'Undefined',
          String family = 'Namaku',
          double size = 50,
          Color? color = Colors.brown}) =>
      Text(
        text,
        style: TextStyle(fontFamily: family, fontSize: size, color: color),
      );
}
