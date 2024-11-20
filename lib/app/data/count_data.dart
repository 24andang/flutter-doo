import 'dart:math';

import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class CountData extends GetxController {
  TextEditingController input = TextEditingController();
  RxList dataList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].obs;
  RxList fingerList = [
    'assets/icons/fingers/one.png',
    'assets/icons/fingers/two.png',
    'assets/icons/fingers/three.png',
    'assets/icons/fingers/four.png',
    'assets/icons/fingers/five.png',
    'assets/icons/fingers/six.png',
    'assets/icons/fingers/seven.png',
    'assets/icons/fingers/eight.png',
    'assets/icons/fingers/nine.png',
    'assets/icons/fingers/ten.png',
  ].obs;
  RxInt score = 0.obs;
  RxInt currentRandom = 0.obs;
  RxString currentFingerRandom = ''.obs;
  RxInt currentRandomB = 0.obs;
  RxString currentFingerRandomB = ''.obs;
  RxString message = ''.obs;

  void updateRandomData() {
    currentRandom.value = dataList[Random().nextInt(dataList.length)];
    currentRandomB.value = dataList[Random().nextInt(dataList.length)];
  }
}
