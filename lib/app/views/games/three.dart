import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../widgets/doo_text.dart';
import '../../data/three_data.dart';

class Three extends StatelessWidget {
  const Three({super.key});

  @override
  Widget build(BuildContext context) {
    final ThreeData controller = ThreeData();

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        title: DooText.all(text: 'Telu', size: 20),
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
                  Obx(() => DooText.all(text: controller.randomData())),
                  SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButton(
                        onPressed: () {
                          controller.dataList.shuffle();
                        },
                        child: Image.asset('assets/icons/suffle.png'),
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.transparent,
                          shadowColor: Colors.transparent,
                          padding: EdgeInsets.zero,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.dataList.shuffle();
                          controller.score += 100;
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
                  SizedBox(height: 200),
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
            title: "Mention three things,",
            titleStyle: DooText.title(size: 20),
            content: Text(
              "Tekan shuffle jika ingin mengganti pertanyaan, & tekan forward jika anak berhasil menyebutkan 3 hal yang ditanyakan.",
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
