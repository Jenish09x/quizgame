import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:quizgame/utils/screen_routes.dart';

void main() {
  runApp(
    GetMaterialApp(
      debugShowCheckedModeBanner: false,
      routes: screen_routes,
    ),
  );
}
