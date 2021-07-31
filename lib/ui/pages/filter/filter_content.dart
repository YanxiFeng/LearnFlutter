import 'package:flutter/material.dart';
import 'package:learnflutter/core/viewmodel/filter_view_model.dart';
import 'package:provider/provider.dart';

class HYFilterContent extends StatelessWidget {
  const HYFilterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[buildChoiceTitle(context), buildChoiceSelect()],
    );
  }

  Widget buildChoiceTitle(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      alignment: Alignment.center,
      child: Text(
        "展示你的选择",
        style: Theme.of(context).textTheme.headline2,
      ),
    );
  }

  Widget buildChoiceSelect() {
    return Expanded(
      child: Consumer<HYFilterViewModel>(
        builder: (ctx, filterVM, child) {
          return ListView(
            // shrinkWrap: true,
            // physics: NeverScrollableScrollPhysics(),
            children: [
              buildSelectTile("五谷蛋白", "五谷蛋白", filterVM.isGlutenFree, (value) {
                filterVM.isGlutenFree = value;
              }),
              buildSelectTile("不含乳糖", "不含乳糖", filterVM.isLactoseFree, (value) {
                filterVM.isLactoseFree = value;
              }),
              buildSelectTile("普通素食主义者", "普通素食主义者", filterVM.isVegetarian,
                  (value) {
                filterVM.isVegetarian = value;
              }),
              buildSelectTile("严格素食主义者", "严格素食主义者", filterVM.isVegan, (value) {
                filterVM.isVegan = value;
              }),
            ],
          );
        },
      ),
    );
  }

  Widget buildSelectTile(String title, String subTitle, bool value,
      void Function(bool) onChanged) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Switch(
        value: value,
        onChanged: onChanged,
      ),
    );
  }
}
