import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/doo_text.dart';
import '../../data/count_data.dart';

class Count extends StatelessWidget {
  const Count({super.key});

  @override
  Widget build(BuildContext context) {
    final CountData controller = CountData();

    controller.updateRandomData();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: DooText.all(text: 'Hitung', size: 20),
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
                  Container(
                    margin: EdgeInsets.only(right: 10),
                    height: 260,
                    color: Colors.transparent,
                    child: Obx(() => GridView.builder(
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                          ),
                          itemCount: controller.currentRandom.value,
                          itemBuilder: (context, index) =>
                              Image.asset('assets/icons/parrot.png'),
                        )),
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
                      if (controller.input.text ==
                          controller.currentRandom.value.toString()) {
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
                  SizedBox(height: 80),
                ],
              ),
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
              "Anak belajar menghitung jumlah obyek yang dilihatnya.",
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

// Image.asset('assets/icons/parrot.png')