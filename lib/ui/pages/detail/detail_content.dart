import 'package:flutter/material.dart';
import 'package:learnflutter/core/model/meal_model.dart';

class HYDetailContent extends StatelessWidget {
  final HyMealModel _meal;
  HYDetailContent(this._meal);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          buildMakeImage(),
          buildMakeTitle(context, "制作材料"),
          buildMakeMaterial(context),
          buildMakeTitle(context, "制作步骤"),
          buildMakeSteps(context)
        ],
      ),
    );
  }

  // 图片
  Widget buildMakeImage() {
    return Container(
      width: double.infinity,
      child: Image.network(_meal.imageUrl),
    );
  }

  // 公共方法-内容框
  Widget buildMakeContent(
      {required BuildContext context, required Widget child}) {
    return Container(
      padding: EdgeInsets.all(10),
      width: MediaQuery.of(context).size.width - 30,
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.all(Radius.circular(6))),
      child: child,
    );
  }

  // 制作材料
  Widget buildMakeMaterial(BuildContext context) {
    return buildMakeContent(
        context: context,
        child: ListView.builder(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: _meal.ingredients.length,
            itemBuilder: (ctx, index) {
              return Card(
                color: Colors.amber,
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(_meal.ingredients[index]),
                ),
              );
            }));
  }

  // 公共方法-标题
  Widget buildMakeTitle(BuildContext context, String title) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 10),
      child: Text(
        title,
        style: Theme.of(context)
            .textTheme
            .headline3!
            .copyWith(fontWeight: FontWeight.bold),
      ),
    );
  }

  // 制作步骤
  Widget buildMakeSteps(BuildContext context) {
    return buildMakeContent(
        context: context,
        child: ListView.separated(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            padding: EdgeInsets.zero,
            itemCount: _meal.steps.length,
            itemBuilder: (ctx, index) {
              return ListTile(
                leading: CircleAvatar(
                  child: Text("#${index + 1}"),
                ),
                title: Text(_meal.steps[index]),
              );
            },
            separatorBuilder: (ctx, index) {
              return Divider();
            }));
  }
}
