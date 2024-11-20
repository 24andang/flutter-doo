import 'package:get/get.dart';
import '../data/rewrite_data.dart';
import '../data/three_data.dart';
import '../data/quiz_data.dart';
import '../data/count_data.dart';

class AppBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RewriteData(), fenix: true);
    Get.lazyPut(() => ThreeData(), fenix: true);
    Get.lazyPut(() => QuizData(), fenix: true);
    Get.lazyPut(() => CountData(), fenix: true);
  }
}
