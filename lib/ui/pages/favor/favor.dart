import 'package:flutter/material.dart';

class HYFavorScreen extends StatelessWidget {
  const HYFavorScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("收藏"),
      ),
      body: Center(
        child: Text("收藏"),
      ),
    );
  }
}
