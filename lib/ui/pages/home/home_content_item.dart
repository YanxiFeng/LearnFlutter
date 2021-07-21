import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/category_model.dart';

class HYHomeContentItem extends StatelessWidget {
  final HYCategoryModel _category;

  HYHomeContentItem(this._category);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: _category.cColor,
          borderRadius: BorderRadius.circular(12),
          gradient: LinearGradient(
              colors: [_category.cColor.withOpacity(0.5), _category.cColor])),
      alignment: Alignment.center,
      child: Text(
        _category.title,
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }
}
