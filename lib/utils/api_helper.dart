import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:quizgame/screen/home/model/home_model.dart';

class ApiHelper {
  static ApiHelper apiHelper =ApiHelper._();
  ApiHelper._();

  Future<HomeModel?> getQuizData() async {
    String apiLink = "https://opentdb.com/api.php?amount=10&category=28&difficulty=easy&type=multiple";
    var res = await http.get(Uri.parse(apiLink));

    print(res.body);
    if (res.statusCode == 200) {
      var json = jsonDecode(res.body);
      HomeModel homeModel = HomeModel.mapToModel(json);

      return homeModel;
    }
    return null;
  }
}
