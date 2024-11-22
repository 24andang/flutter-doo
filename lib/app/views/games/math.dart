import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/doo_text.dart';
import '../../data/count_data.dart';

class Math extends StatelessWidget {
  const Math({super.key});

  @override
  Widget build(BuildContext context) {
    final CountData controller = CountData();
    controller.updateRandomData();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: DooText.all(text: 'mat', size: 20),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: DooText.all(text: 'back', size: 20)),
                  Obx(() =>
                      DooText.all(text: 'score: ${controller.score}', size: 20))
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Obx(() =>
                      DooText.all(text: controller.message.value, size: 20)),
                  Row(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Obx(() => Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      '${controller.fingerList[controller.currentRandom.value - 1]}'),
                                  SizedBox(height: 10),
                                  Text(
                                    '${controller.currentRandom.value}',
                                    style: DooText.content(size: 30),
                                  )
                                ],
                              )),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Center(
                          child: Obx(() => DooText.all(
                              text: controller.currentRandom.value >
                                      controller.currentRandomB.value
                                  ? '-'
                                  : '+')),
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Center(
                          child: Obx(() => Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Image.asset(
                                      '${controller.fingerList[controller.currentRandomB.value - 1]}'),
                                  SizedBox(height: 10),
                                  Text(
                                    '${controller.currentRandomB.value}',
                                    style: DooText.content(size: 30),
                                  )
                                ],
                              )),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20),
                  TextField(
                    controller: controller.input,
                    autofocus: true,
                    textAlign: TextAlign.center,
                    keyboardType: TextInputType.number,
                    style: DooText.content(size: 50),
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 50),
                  ElevatedButton(
                    onPressed: () {
                      if (controller.currentRandom.value >
                              controller.currentRandomB.value &&
                          int.parse(controller.input.text) ==
                              controller.currentRandom.value -
                                  controller.currentRandomB.value) {
                        controller.message.value = 'Benar';
                        controller.score += 100;
                        controller.updateRandomData();
                        controller.input.clear();
                        Future.delayed(
                          Duration(seconds: 1),
                          () => controller.message.value = '',
                        );
                      } else if (controller.currentRandom.value <=
                              controller.currentRandomB.value &&
                          int.parse(controller.input.text) ==
                              controller.currentRandom.value +
                                  controller.currentRandomB.value) {
                        controller.message.value = 'Benar';
                        controller.score += 100;
                        controller.updateRandomData();
                        controller.input.clear();
                        Future.delayed(
                          Duration(seconds: 1),
                          () => controller.message.value = '',
                        );
                      } else {
                        controller.message.value = 'Semangat';
                        Future.delayed(
                          Duration(seconds: 1),
                          () => controller.message.value = '',
                        );
                      }
                    },
                    child: Image.asset('assets/icons/forward.png'),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent,
                      shadowColor: Colors.transparent,
                      padding: EdgeInsets.zero,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 100)
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
            titlePadding: EdgeInsets.all(20),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: "Finger Math,",
            titleStyle: DooText.title(size: 20),
            content: Text(
              "Kerap kali mengajarkan penjumlahan dan pengurangan dengan jemarinya yang mungil. Dipastikan tidak ada hasil minus.",
              style: DooText.content(),
            ),
          );
        },
        child: Text(
          "?",
          style: DooText.title(),
        ),
      ),
    );
  }
}
