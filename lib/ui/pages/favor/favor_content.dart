import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/meal/meal_item.dart';
import 'package:learnflutter/core/viewmodel/favor_view_model.dart';
import 'package:provider/provider.dart';

class HYFavorContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(builder: (ctx, favorVM, child) {
      return ListView.builder(
          itemCount: favorVM.favors.length,
          itemBuilder: (itemCtx, index) {
            return HYMealItem(favorVM.favors[index]);
          });
    });
  }
}
