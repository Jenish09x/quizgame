import 'package:flutter/material.dart';
import 'package:quizgame/screen/home/view/home_screen.dart';
import 'package:quizgame/screen/result/view/result_screen.dart';
import 'package:quizgame/screen/splash/view/splash_screen.dart';

Map<String,WidgetBuilder>screen_routes={
  '/':(context) => const SplashScreen(),
  'home':(context) => const HomeScreen(),
  'result':(context) => const ResultScreen(),
};