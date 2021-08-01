import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/meal_model.dart';
import 'package:learnflutter/core/services/meal_request.dart';
import 'package:learnflutter/core/viewmodel/filter_view_model.dart';

class HYMealViewModel extends ChangeNotifier {
  List<HyMealModel> _meals = [];

  late HYFilterViewModel _filterVM;

  List<HyMealModel> get meals {
    return _meals.where((element) {
      if (_filterVM.isGlutenFree && !element.isGlutenFree) return false;
      if (_filterVM.isLactoseFree && !element.isLactoseFree) return false;
      if (_filterVM.isVegan && !element.isVegan) return false;
      if (_filterVM.isVegetarian && !element.isVegetarian) return false;
      return true;
    }).toList();
  }

  void updateFilterVM(HYFilterViewModel filterVM) {
    _filterVM = filterVM;
  }

  HYMealViewModel() {
    HYMealRequest.requestMealData().then((value) {
      _meals = value;
      // 通知所以依赖的地方重新构建
      notifyListeners();
    });
  }
}
