import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/doo_text.dart';
import '../../data/rewrite_data.dart';

class Rewrite extends StatelessWidget {
  const Rewrite({super.key});

  @override
  Widget build(BuildContext context) {
    final RewriteData controller = Get.find<RewriteData>();
    controller.updateRandomData();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: DooText.all(text: 'Ketik', size: 20),
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
                  SizedBox(height: 20),
                  Obx(() => DooText.all(text: controller.currentRandom.value)),
                  TextField(
                    controller: controller.input,
                    autofocus: true,
                    textAlign: TextAlign.center,
                    style: DooText.title(size: 50),
                  ),
                  SizedBox(height: 30),
                  ElevatedButton(
                    onPressed: () {
                      if (controller.input.text ==
                          controller.currentRandom.value) {
                        controller.message.value = 'benar';
                        controller.updateRandomData();
                        controller.score += 100;
                        controller.input.clear();
                        Future.delayed(Duration(seconds: 1), () {
                          controller.message.value = '';
                        });
                      } else {
                        controller.message.value = 'semangat';
                        Future.delayed(Duration(seconds: 1), () {
                          controller.message.value = '';
                        });
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
            title: "Mention three things,",
            titleStyle: DooText.title(size: 20),
            content: Text(
              "Anak belajar typing.",
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
