import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/category_model.dart';
import 'package:learnflutter/core/viewmodel/meal_view_model.dart';
import 'package:learnflutter/ui/pages/meal/meal_item.dart';
import 'package:provider/provider.dart';

class HYMealContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final category =
        ModalRoute.of(context)!.settings.arguments as HYCategoryModel;
    return Consumer<HYMealViewModel>(
      builder: (ctx, mealVM, child) {
        final meals = mealVM.meals
            .where((element) => element.categories.contains(category.id))
            .toList();
        return ListView.builder(
            itemCount: meals.length,
            itemBuilder: (ctx, index) {
              return HYMealItem(meals[index]);
            });
      },
    );
  }
}
