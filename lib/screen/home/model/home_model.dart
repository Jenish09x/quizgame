class HomeModel
{
  int? response_code;
  List<ResultModel>? results;

  HomeModel({this.response_code, this.results});

  factory HomeModel.mapToModel(Map m1)
  {
    List l1= m1["results"];
    return HomeModel(
      response_code: m1["response_code"],
      results: l1.map((e) => ResultModel.mapToModel(e)).toList(),
    );
  }
}

class ResultModel
{
    String? type,difficulty,category,question,correct_answer;
    List? incorrect_answers;

    ResultModel(
      {this.type,
      this.difficulty,
      this.category,
      this.question,
      this.correct_answer,
      this.incorrect_answers});

    factory ResultModel.mapToModel(Map m1)
    {
      return ResultModel(
        category: m1["category"],
        correct_answer: m1["correct_answer"],
        difficulty: m1["difficulty"],
        incorrect_answers: m1["incorrect_answers"],
        question: m1["question"],
        type:  m1["type"],
      );
    }
}

class QuizModel {
  String? question,correct_answer;
  List? option;

  QuizModel(
      {this.question, this.correct_answer,this.option});
}