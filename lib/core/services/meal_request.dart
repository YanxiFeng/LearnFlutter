import 'package:learnflutter/core/model/meal_model.dart';

import 'http_request.dart';

class HYMealRequest {
  static Future<List<HyMealModel>> requestMealData() async {
    // 1.发送网络请求
    final url = "/29/meal";
    final result = await HttpRequest.request(url);

    // 2.json转模型
    final mealsArray = result["meal"];
    List<HyMealModel> meals = [];
    for (var item in mealsArray) {
      final model = HyMealModel.fromJson(item);
      meals.add(model);
    }
    return meals;
  }
}
