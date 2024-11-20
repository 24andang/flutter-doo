import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../data/quiz_data.dart';
import '../widgets/doo_text.dart';

class Quiz extends StatelessWidget {
  const Quiz({super.key});

  @override
  Widget build(BuildContext context) {
    final QuizData controller = QuizData();
    controller.updateRandomData();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: DooText.all(text: 'Kuis', size: 20),
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
                  Obx(() => DooText.all(
                      text: controller.currentRandom['question'],
                      color: Colors.teal)),
                  SizedBox(height: 30),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Obx(() => ElevatedButton(
                            onPressed: () {
                              if (controller.currentRandom['isRight'] == 0) {
                                controller.message.value = 'Benar';
                                controller.score += 100;
                                controller.updateRandomData();
                                Future.delayed(
                                  Duration(seconds: 1),
                                  () => controller.message.value = '',
                                );
                              }
                            },
                            child: DooText.all(
                                text: controller.currentRandom['answer'][0],
                                size: 35,
                                color: Colors.white),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.blueAccent,
                              shadowColor: Colors.transparent,
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            ),
                          )),
                      Obx(() => ElevatedButton(
                            onPressed: () {
                              if (controller.currentRandom['isRight'] == 1) {
                                controller.message.value = 'Benar';
                                controller.score += 100;
                                controller.updateRandomData();
                                Future.delayed(
                                  Duration(seconds: 1),
                                  () => controller.message.value = '',
                                );
                              }
                            },
                            child: DooText.all(
                                text: controller.currentRandom['answer'][1],
                                size: 35,
                                color: Colors.white),
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.redAccent,
                              shadowColor: Colors.transparent,
                              padding: EdgeInsets.fromLTRB(10, 20, 10, 20),
                            ),
                          )),
                    ],
                  ),
                ],
              ),
              SizedBox(height: 80),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
            titlePadding: EdgeInsets.all(20),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: "Counting,",
            titleStyle: DooText.title(size: 20),
            content: Text(
              "Melatih pemahaman anak terhadap sekitar atau pengetahuan umum.",
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
