import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:untitled1/app_route.dart';
import 'package:untitled1/core/binding/init_binding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      getPages: AppRoute.route,
      initialRoute: RouteNames.homeScreen,
      initialBinding: InitBinding(),
    );
  }
}
