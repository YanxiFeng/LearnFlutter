import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/meal_model.dart';
import 'package:learnflutter/core/services/meal_request.dart';

class HYMealViewModel extends ChangeNotifier {
  List<HyMealModel> _meals = [];

  List<HyMealModel> get meals {
    return _meals;
  }

  HYMealViewModel() {
    HYMealRequest.requestMealData().then((value) {
      _meals = value;
      // 通知所以依赖的地方重新构建
      notifyListeners();
    });
  }
}
