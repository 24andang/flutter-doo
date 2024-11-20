import 'package:flutter/material.dart';
import 'doo_text.dart';
import 'package:get/get.dart';

class DooButton {
  static menu(
          {String icon = 'crab.png',
          String text = "Undefined",
          String to = 'home'}) =>
      ElevatedButton(
        onPressed: () => Get.toNamed('/$to'),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/icons/$icon'),
            Text(
              text,
              style: DooText.title(size: 20),
            ),
          ],
        ),
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.zero,
        ),
      );
}
