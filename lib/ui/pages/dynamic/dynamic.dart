import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/dynamic/dynamic_content.dart';

class HYDynamicScreen extends StatelessWidget {
  const HYDynamicScreen({Key? key}) : super(key: key);

  static const String routeName = "/dynamic";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("动态化"),
      ),
      body: HYDynamicContent(),
    );
  }
}
