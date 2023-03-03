import 'package:get/get.dart';
import 'package:getx/main.dart';

import '../layouts/SecondScreen.dart';

class RoutesClass {
  static String home = "/HomePage";
  static String Secondscreen = "/SecondScreen";


  static String getHomeRoute() => home;

  static String getSecondScreen() => Secondscreen;

  static List<GetPage> routes = [
    GetPage(name: home, page: () => const HomePage()),
    GetPage(name: Secondscreen, page: () => SecondScreen(), transition: Transition.fade,transitionDuration: const Duration(seconds: 1))
  ];

}