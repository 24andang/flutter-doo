import 'package:get/get.dart';
import '../views/home.dart';
import '../views/games/three.dart';
import '../views/games/rewrite.dart';
import '../views/games/quiz.dart';
import '../views/games/count.dart';
import '../views/games/math.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: "/home", page: () => Home()),
    GetPage(name: "/three", page: () => Three()),
    GetPage(name: "/rewrite", page: () => Rewrite()),
    GetPage(name: "/quiz", page: () => Quiz()),
    GetPage(name: "/count", page: () => Count()),
    GetPage(name: "/math", page: () => Math()),
  ];
}
