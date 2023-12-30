import 'package:get/get.dart';
import 'package:untitled1/ui/screens/home_screen.dart';

class RouteNames {
  static String homeScreen = "/homeScreen";
}

class AppRoute {
  static final route = [
    GetPage(name: RouteNames.homeScreen, page: () => HomeScreen()),
  ];
}
