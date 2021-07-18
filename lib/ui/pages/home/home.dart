import 'package:flutter/material.dart';

class HYHomeScreen extends StatelessWidget {
  const HYHomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("美食广场"),
      ),
      body: Center(
        child: Text("美食"),
      ),
    );
  }
}
