import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'widgets/doo_text.dart';
import 'widgets/doo_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: DooText.all(text: 'DOO')),
      body: Center(
        child: GridView.count(
          padding: const EdgeInsets.all(20),
          crossAxisSpacing: 10,
          mainAxisSpacing: 40,
          crossAxisCount: 2,
          children: [
            DooButton.menu(icon: 'crab.png', to: 'three', text: 'Telu'),
            DooButton.menu(icon: 'dolphin.png', to: 'rewrite', text: 'Ketik'),
            DooButton.menu(icon: 'octopus.png', to: 'quiz', text: 'Kuis'),
            DooButton.menu(icon: 'parrot.png', to: 'count', text: 'Hitung'),
            DooButton.menu(icon: 'shell.png', to: 'math', text: 'Mat'),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.defaultDialog(
            titlePadding: EdgeInsets.all(20),
            contentPadding: EdgeInsets.symmetric(horizontal: 20),
            title: "Dear friend,",
            titleStyle: DooText.title(size: 20),
            content: Text(
              "Ini adalah versi digital dari games yang sering saya mainkan bersama anak saya.",
              style: DooText.content(),
            ),
          );
        },
        child: Text(
          "!",
          style: DooText.title(),
        ),
      ),
    );
  }
}
