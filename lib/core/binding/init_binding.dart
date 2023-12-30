import 'package:get/get.dart';
import 'package:untitled1/core/service/app_api.dart';


class InitBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(AppApi());
  }

}