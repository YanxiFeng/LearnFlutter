import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/dine/dine_content.dart';

class HYDineScreen extends StatelessWidget {
  static const String routeName = "/dine";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("进餐"),
      ),
      body: HYDineContent(),
    );
  }
}
