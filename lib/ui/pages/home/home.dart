import 'package:flutter/material.dart';
import 'package:learnflutter/generated/l10n.dart';
import 'package:learnflutter/ui/pages/home/home_drawer.dart';

import 'home_content.dart';

class HYHomeScreen extends StatelessWidget {
  const HYHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title),
      ),
      body: HYHomeContent(),
      drawer: HYHomeDrawer(),
    );
  }
}
