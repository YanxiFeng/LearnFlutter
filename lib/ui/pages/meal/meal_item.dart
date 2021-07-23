import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/meal_model.dart';

class HYMealItem extends StatelessWidget {
  final HyMealModel _item;
  HYMealItem(this._item);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        children: <Widget>[buildBasicInfo(), buildOperationInfo()],
      ),
    );
  }

  Widget buildBasicInfo() {
    return Stack();
  }

  Widget buildOperationInfo() {
    return Row();
  }
}
