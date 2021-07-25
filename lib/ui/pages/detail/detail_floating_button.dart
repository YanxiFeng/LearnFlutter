import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/meal_model.dart';
import 'package:learnflutter/core/viewmodel/favor_view_model.dart';
import 'package:provider/provider.dart';

class HYDetailFloatingButton extends StatelessWidget {
  final HyMealModel _meal;
  HYDetailFloatingButton(this._meal);

  @override
  Widget build(BuildContext context) {
    return Consumer<HYFavorViewModel>(
      builder: (ctx, favorVM, child) {
        final icon = favorVM.isContainsFavor(_meal)
            ? Icons.favorite
            : Icons.favorite_border;
        return FloatingActionButton(
            child: Icon(icon),
            onPressed: () {
              favorVM.handleFavor(_meal);
            });
      },
    );
  }
}
