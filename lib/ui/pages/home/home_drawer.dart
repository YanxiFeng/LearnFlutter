import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/filter/filter.dart';

class HYHomeDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      child: Drawer(
        child: Column(
          children: [
            buildHeaderView(context),
            buildListTile(Icon(Icons.restaurant), "进餐", context, () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(HYFilterScreen.routeName);
            }),
            buildListTile(Icon(Icons.settings), "过滤", context, () {
              Navigator.of(context).pop();
              Navigator.of(context).pushNamed(HYFilterScreen.routeName);
            }),
          ],
        ),
      ),
    );
  }

  Widget buildHeaderView(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 120,
      color: Colors.orange,
      alignment: Alignment(0, 0.7),
      margin: EdgeInsets.only(bottom: 18),
      child: Text(
        "开始动手",
        style: Theme.of(context).textTheme.headline3,
      ),
    );
  }

  Widget buildListTile(
      Widget icon, String title, BuildContext context, VoidCallback handler) {
    return ListTile(
      leading: icon,
      title: Text(
        title,
        style: Theme.of(context).textTheme.headline2,
      ),
      onTap: handler,
    );
  }
}
