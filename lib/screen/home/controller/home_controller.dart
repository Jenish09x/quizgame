import 'dart:async';

import 'package:get/get.dart';
import 'package:quizgame/screen/home/model/home_model.dart';
import 'package:quizgame/utils/api_helper.dart';

class HomeController extends GetxController {
  Rxn<HomeModel> homeModel = Rxn();
  RxInt index=0.obs;
  Rxn<List<QuizModel>> randomList =Rxn();
  RxInt checkAns = 1.obs;
  RxInt timer = 20.obs;
  Future<void> quizData() async {
    HomeModel? h1 = await ApiHelper.apiHelper.getQuizData();
    homeModel.value = h1;
    randomData();
    print("====================================================$randomList==========================");
  }
  void randomData() {
    if (homeModel.value != null) {
      List<QuizModel> result = [];
      for (ResultModel r1 in homeModel.value!.results!) {
        List allOption = r1.incorrect_answers!;
        allOption.add(r1.correct_answer);
        allOption.shuffle();

        QuizModel q1 = QuizModel(
          question: r1.question,
          correct_answer: r1.correct_answer,
          option: allOption,
        );
        result.add(q1);
      }
      randomList.value = result;

      update();
    }
  }
}
