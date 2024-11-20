import 'package:doo_land/app/views/widgets/doo_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Wellcome extends StatelessWidget {
  const Wellcome({super.key});

  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 3), () => Get.offNamed('/home'));

    return Scaffold(
        body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('assets/icons/bara.png'),
          Text(
            "BARA.",
            style: DooText.title(size: 20, color: Colors.blue[500]),
          )
        ],
      ),
    ));
  }
}
