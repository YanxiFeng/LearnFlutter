import 'package:flutter/material.dart';

class HYFilterViewModel extends ChangeNotifier {
  // 五谷蛋白
  bool _isGlutenFree = false;
  // 严格素食主义
  bool _isVegan = false;
  // 素食主义
  bool _isVegetarian = false;
  // 乳糖
  bool _isLactoseFree = false;

  bool get isGlutenFree {
    return _isGlutenFree;
  }

  set isGlutenFree(bool value) {
    _isGlutenFree = value;
    notifyListeners();
  }

  bool get isVegan {
    return _isVegan;
  }

  set isVegan(bool value) {
    _isVegan = value;
    notifyListeners();
  }

  bool get isVegetarian {
    return _isVegetarian;
  }

  set isVegetarian(bool value) {
    _isVegetarian = value;
    notifyListeners();
  }

  bool get isLactoseFree {
    return _isLactoseFree;
  }

  set isLactoseFree(bool value) {
    _isLactoseFree = value;
    notifyListeners();
  }
}
