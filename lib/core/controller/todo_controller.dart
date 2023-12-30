import 'package:get/get.dart';
import 'package:untitled1/core/service/app_api.dart';

class TodoController extends GetxController {
  final _appApi = Get.find<AppApi>();

  var dodoList = [].obs;
  var isLoading = false.obs;

  @override
  void onInit() async {
    await getTodoList();
    super.onInit();
  }

  Future<void> getTodoList() async {
    isLoading.value = true;
    final result = await _appApi.getListOfTodo();
    isLoading.value = false;
    if (result.isEmpty) {
      Get.showSnackbar(const GetSnackBar(
        title: "SOmthing went Wrong",
      ));
    } else {
      dodoList.value = result;
    }
  }
}
