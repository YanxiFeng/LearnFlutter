import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/home/home_drawer.dart';

import 'home_content.dart';

class HYHomeScreen extends StatelessWidget {
  const HYHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食广场"),
      ),
      body: HYHomeContent(),
      drawer: HYHomeDrawer(),
    );
  }
}
