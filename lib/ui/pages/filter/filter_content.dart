import 'package:flutter/material.dart';

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
      child: ListView(
        // shrinkWrap: true,
        // physics: NeverScrollableScrollPhysics(),
        children: [
          buildSelectTile("五谷蛋白", "五谷蛋白", (value) {}),
          buildSelectTile("不含乳糖", "不含乳糖", (value) {}),
          buildSelectTile("普通素食主义者", "普通素食主义者", (value) {}),
          buildSelectTile("严格素食主义者", "严格素食主义者", (value) {}),
        ],
      ),
    );
  }

  Widget buildSelectTile(
      String title, String subTitle, void Function(bool) onChanged) {
    return ListTile(
      title: Text(title),
      subtitle: Text(subTitle),
      trailing: Switch(
        value: false,
        onChanged: onChanged,
      ),
    );
  }
}
