import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/meal_model.dart';

class HYFavorViewModel extends ChangeNotifier {
  List<HyMealModel> _favors = [];

  List<HyMealModel> get favors {
    return _favors;
  }

  void addFavor(HyMealModel meal) {
    _favors.add(meal);
    notifyListeners();
  }

  void removeFavor(HyMealModel meal) {
    _favors.remove(meal);
    notifyListeners();
  }

  bool isContainsFavor(HyMealModel meal) {
    return _favors.contains(meal);
  }

  void handleFavor(HyMealModel meal) {
    if (isContainsFavor(meal)) {
      removeFavor(meal);
    } else {
      addFavor(meal);
    }
  }
}
