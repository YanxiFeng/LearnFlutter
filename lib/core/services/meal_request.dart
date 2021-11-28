import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:learnflutter/core/model/meal_model.dart';

import 'http_request.dart';

class HYMealRequest {
  static Future<List<HyMealModel>> requestMealData() async {
    // 1.发送网络请求
    // final url = "/meal";
    // final result = await HttpRequest.request(url);

    // 1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/meal.json");
    // 2.将jsonString转换成Map/List
    final result = json.decode(jsonString);
    // 2.json转模型
    final mealsArray = result["meal"];
    List<HyMealModel> meals = [];
    for (var item in mealsArray) {
      print('--------$item');
      final model = HyMealModel.fromJson(item);
      meals.add(model);
    }
    return meals;
  }
}
