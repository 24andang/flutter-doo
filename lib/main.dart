import 'package:flutter/material.dart';
import 'package:get/get.dart';
import './app/views/wellcome.dart';
import './app/configs/routes.dart';
import './app/configs/app_binding.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: AppBinding(),
      home: Wellcome(),
      getPages: AppRoutes.routes,
    );
  }
}
