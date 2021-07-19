import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:learnflutter/core/model/category_model.dart';

class JsonParse {
  static Future<List<HYCategoryModel>> getCategoryData() async {
    // 1.加载json文件
    final jsonString = await rootBundle.loadString("assets/json/category.json");

    // 2.将jsonString转换成Map/List
    final result = json.decode(jsonString);

    // 3.将Map的内容转换对象
    final resultList = result["category"];
    List<HYCategoryModel> categories = [];
    for (var item in resultList) {
      categories.add(HYCategoryModel.fromJson(item));
    }

    return categories;
  }
}
