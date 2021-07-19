import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/category_model.dart';
import 'package:learnflutter/core/services/json_parse.dart';

class HYHomeContent extends StatefulWidget {
  HYHomeContent({Key? key}) : super(key: key);

  @override
  _HYHomeContentState createState() => _HYHomeContentState();
}

class _HYHomeContentState extends State<HYHomeContent> {
  List<HYCategoryModel> _categories = [];

  @override
  void initState() {
    super.initState();

    // 加载数据
    JsonParse.getCategoryData().then((value) {
      setState(() {
        _categories = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        padding: EdgeInsets.all(20),
        itemCount: _categories.length,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.5),
        itemBuilder: (ctx, index) {
          return Container(
            decoration: BoxDecoration(
                color: Colors.lightBlue,
                borderRadius: BorderRadius.circular(12)),
            alignment: Alignment.center,
            child: Text(
              _categories[index].title,
              style: Theme.of(context).textTheme.headline3,
            ),
          );
        });
  }
}
